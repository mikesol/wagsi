import os
ld = os.listdir('cookbook')
ipt = []
for fi in ld:
  with open('cookbook/'+fi,'r') as r:
    v = r.read()
    for x in v.split('\n'):
      if 'module' in x and 'WAGSI.Cookbook' in x:
        ipt.append(v)
        break

print(len(ipt), "files")

def mangle(ii):
  for x in ii.split('\n'):
      if 'module' in x and 'WAGSI.Cookbook' in x:
        y = x.split(' ')
        fst = [z for z in y if 'WAGSI.Cookbook' in z][0]
        snd = fst.split('.')[-1]
        return (fst,snd,ii)
  raise ValueError('Cannot mangle input '+ii)

import json

mangled = [mangle(x) for x in ipt]

NEWLINE = '\n'

modules = NEWLINE.join(['import %s as %s' % (x[0], x[1]) for x in mangled])
tuples =  NEWLINE.join(['  , Tuple (unwrap %s.wag).title $ proxy (component %s rf (const %s.wag))' % (x[1], json.dumps(x[2]), x[1]) for x in mangled])

mainIs = f'''
module WAGSI.Storybook where

import Prelude

import Control.Monad.State (evalState, get, put)
import Data.Map as Map
import Data.Maybe (Maybe(..))
import Data.Newtype (unwrap)
import Data.Set as Set
import Data.Traversable (traverse)
import Data.Tuple (Tuple(..))
import Data.Tuple.Nested ((/\), type (/\))
import Effect (Effect)
import Effect.Aff.Class (class MonadAff)
import Effect.Class (class MonadEffect)
import Effect.Ref as Ref
import Foreign.Object as Object
import Halogen as H
import Halogen.Aff as HA
import Halogen.HTML as HH
import Halogen.Storybook (Stories, StoryQuery, proxy, runStorybook)
{modules}
import WAGSI.Main (component)
import WAGS.Lib.Tidal.Types (BufferUrl, Sample, ForwardBackwards)

--

baseComponent :: forall q i o m. H.Component q i o m
baseComponent =
  H.mkComponent
    {{ initialState
    , render
    , eval: H.mkEval H.defaultEval
    }}
  where
  initialState _ = 0

  render _ =
    HH.div_ [ HH.text "Click on a link in the left column to get started!" ]

stories' :: forall m
   . MonadEffect m
  => MonadAff m
  => Ref.Ref (Map.Map Sample {{ url :: BufferUrl, buffer :: ForwardBackwards }})
  ->  Array (String /\ H.Component StoryQuery Unit Void m)
stories' rf =   [ Tuple "" $ proxy baseComponent
{tuples}
  ]

stories
  :: forall m
   . MonadEffect m
  => MonadAff m
  => Ref.Ref (Map.Map Sample {{ url :: BufferUrl, buffer :: ForwardBackwards }})
  -> Stories m
stories rf = Object.fromFoldable (evalState traversed {{ tags: Set.empty, n: 0 }})
  where
  traversed = stories' rf # traverse \(a /\ b) -> do
    {{ tags, n }} <- get
    let newTag = if Set.member a tags then a <> " " <> show n else a
    put {{ tags: tags <> Set.singleton newTag , n: n + 1 }}
    pure (newTag /\ b)


main :: Effect Unit
main = HA.runHalogenAff do
  body <- HA.awaitBody
  bufCache <- H.liftEffect $ Ref.new Map.empty
  runStorybook {{ stories: stories bufCache, logo: Nothing }} body
'''

if not os.path.isdir('storybook'):
  os.mkdir('storybook')

with open('storybook/Main.purs', 'w') as sb:
  sb.write(mainIs)