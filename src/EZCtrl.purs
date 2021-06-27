module EZCtrl where

import Data.Symbol (class IsSymbol)
import FromEnv (class FromEnv, ORow(..), fromEnv)
import Prim.Ordering (Ordering, LT, GT, EQ)
import Prim.Row as Row
import Prim.RowList as RL
import Prim.Symbol as Sym
import Record as Record
import Type.Proxy (Proxy(..))

class EZCtrl' :: RL.RowList Type -> RL.RowList Type -> Type -> Row Type -> Row Type -> Constraint
class EZCtrl' rowInRL rowOutRL env rowIn rowOut | rowInRL rowOutRL env rowIn -> rowOut where
  ezctrl' :: Proxy rowInRL -> Proxy rowOutRL -> env -> ORow rowIn -> ORow rowOut

instance ezctrlRLNilNil :: EZCtrl' RL.Nil RL.Nil env rowIn () where
  ezctrl' _ _ _ _ = ORow {}

instance ezctrlRLConsNil :: EZCtrl' (RL.Cons a b c) RL.Nil env rowIn () where
  ezctrl' _ _ _ _ = ORow {}

instance ezctrl''LT :: (EZCtrl' oldRest (RL.Cons newSymbol newDef newRest) env old new) => EZCtrl'' LT oldSymbol oldDef oldRest newSymbol newDef newRest env old new where
  ezctrl'' _ = ezctrl' (Proxy :: _ oldRest) (Proxy :: _ (RL.Cons newSymbol newDef newRest))

instance ezctrlRLNilCons ::
  ( EZCtrl' RL.Nil rest env rowIn tail
  , FromEnv env val
  , IsSymbol key
  , Row.Lacks key tail
  , Row.Cons key val tail rowOut
  ) =>
  EZCtrl' RL.Nil (RL.Cons key val rest) env rowIn rowOut where
  ezctrl' _ _ e a = ORow (Record.insert (Proxy :: _ key) (fromEnv e) tail)
    where
    ORow tail = ezctrl' (Proxy :: _ RL.Nil) (Proxy :: _ rest) e a

instance ezctrl''GT ::
  ( EZCtrl' (RL.Cons oldSymbol oldDef oldRest) newRest env old tail
  , FromEnv env newDef
  , IsSymbol newSymbol
  , Row.Lacks newSymbol tail
  , Row.Cons newSymbol newDef tail new
  ) =>
  EZCtrl'' GT oldSymbol oldDef oldRest newSymbol newDef newRest env old new where
  ezctrl'' _ e a = ORow (Record.insert (Proxy :: _ newSymbol) (fromEnv e) tail)
    where
    ORow tail = ezctrl' (Proxy :: _ (RL.Cons oldSymbol oldDef oldRest)) (Proxy :: _ newRest) e a

instance ezctrl''EQSame :: (EZCtrl' oldRest newRest env old tail, IsSymbol sameSymbol, Row.Lacks sameSymbol tail, Row.Cons sameSymbol sameDef ignore old, Row.Cons sameSymbol sameDef tail new) => EZCtrl'' EQ sameSymbol sameDef oldRest sameSymbol sameDef newRest env old new where
  ezctrl'' _ e (ORow a) = ORow (Record.insert (Proxy :: _ sameSymbol) (Record.get (Proxy :: _ sameSymbol) a) tail)
    where
    ORow tail = ezctrl' (Proxy :: _ oldRest) (Proxy :: _ newRest) e (ORow a)
else instance ezctrl''EQDiff :: (EZCtrl' oldRest newRest env old tail, FromEnv env newDef, IsSymbol sameSymbol, Row.Lacks sameSymbol tail, Row.Cons sameSymbol newDef tail new) => EZCtrl'' EQ sameSymbol oldDef oldRest sameSymbol newDef newRest env old new where
  ezctrl'' _ e (ORow a) = ORow (Record.insert (Proxy :: _ sameSymbol) (fromEnv e) tail)
    where
    ORow tail = ezctrl' (Proxy :: _ oldRest) (Proxy :: _ newRest) e (ORow a)

class EZCtrl'' :: Ordering -> Symbol -> Type -> RL.RowList Type -> Symbol -> Type -> RL.RowList Type -> Type -> Row Type -> Row Type -> Constraint
class EZCtrl'' symComp oldSymbol oldDef oldRest newSymbol newDef newRest env rowIn rowOut | symComp oldSymbol oldDef oldRest newSymbol newDef newRest env rowIn -> rowOut where
  ezctrl'' :: Proxy (Proxy symComp -> Proxy oldSymbol -> Proxy oldDef -> Proxy oldRest -> Proxy newSymbol -> Proxy newDef -> Proxy newRest) -> env -> ORow rowIn -> ORow rowOut

instance ezctrlConsCons ::
  ( Sym.Compare oldSymbol newSymbol symComp
  , EZCtrl'' symComp oldSymbol oldDef oldRest newSymbol newDef newRest env old new
  ) =>
  EZCtrl' (RL.Cons oldSymbol oldDef oldRest) (RL.Cons newSymbol newDef newRest) env old new where
  ezctrl' _ _ = ezctrl'' (Proxy :: _ (Proxy symComp -> Proxy oldSymbol -> Proxy oldDef -> Proxy oldRest -> Proxy newSymbol -> Proxy newDef -> Proxy newRest))

class EZCtrl env rowIn rowOut where
  ezctrl :: env -> ORow rowIn -> ORow rowOut

instance ezctrlAll :: (RL.RowToList rowIn rowInRL, RL.RowToList rowOut rowOutRL, EZCtrl' rowInRL rowOutRL env rowIn rowOut) => EZCtrl env rowIn rowOut where
  ezctrl = (ezctrl' :: Proxy rowInRL -> Proxy rowOutRL -> env -> ORow rowIn -> ORow rowOut) Proxy Proxy
