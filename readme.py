DHALL = '''let conf = ./spago.dhall

in      conf
    //  { sources = conf.sources # [ "readme/**/*.purs" ]
        }
'''

with open('readme.dhall', 'w') as f:
  f.write(DHALL)

import os
import subprocess

try:
  os.mkdir('readme')
except: pass

with open('README.md', 'r') as rf:
  i = [x.split('```')[0] for x in rf.read().split('```purescript')[1:]]
  for x in i:
    with open('readme/Readme.purs', 'w') as wf:
      nnf = [y for y in x.split('\n') if 'module' not in y]
      nf = '\n'.join(nnf)
      wf.write('module Foo.Bar.Baz where\n'+nf )
    c = subprocess.run(['npx','spago','-x','readme.dhall','build'])
    if c.returncode == 1:
      raise ValueError('Could not compile')