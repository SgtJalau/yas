module TestTranslation where
import TestEvaluation (ev)
import Language.BOL.Translator
import Language.BOL.Evaluator (Val(..))
import Language.BOL.ICL
import Language.BOL.Samples.Lt5
import Data.Map
import Test.HUnit (Test(TestLabel), (~=?))

env :: Env
env = (ei, ep, ev)

repoA, repoB :: [OId]
repoA = ["a1", "a2"]
repoB = ["b1", "b2", "b3"]

v1 = (1, BoundedSetType repoA)
v2 = (2, BoundedSetType repoB)

ei :: EnvI
ei = insert "A" v1
   $ insert "B" v2
   $ empty

v3 = (3, BoundedSetType repoB)
v4 = (4, BoundedSetType repoB)

ints = [0, 1, 2, 3, 5]

v5 = (5, BoundedIntType ints)
v6 = (6, BoundedIntType ints)
v7 = (7, BoundedIntType ints)

ep :: EnvP
ep = insert "a1" (insert "bs" v3 empty)
   $ insert "a2" (insert "bs" v4 empty)
   $ insert "b1" (insert "c" v5 empty)
   $ insert "b2" (insert "c" v6 empty)
   $ insert "b3" (insert "c" v7 empty)
   $ empty

expected :: Form
expected
 = Conj
    (Impl (ElOf (ObjectVal "a1") v1) (Disj
      (Conj (ElOf (ObjectVal "b1") v3) (Lt (VarTerm v5) (ValTerm (IntVal 5)))) (Disj
      (Conj (ElOf (ObjectVal "b2") v3) (Lt (VarTerm v6) (ValTerm (IntVal 5))))
      (Conj (ElOf (ObjectVal "b3") v3) (Lt (VarTerm v7) (ValTerm (IntVal 5)))))))
    (Impl (ElOf (ObjectVal "a2") v1) (Disj
      (Conj (ElOf (ObjectVal "b1") v4) (Lt (VarTerm v5) (ValTerm (IntVal 5)))) (Disj
      (Conj (ElOf (ObjectVal "b2") v4) (Lt (VarTerm v6) (ValTerm (IntVal 5))))
      (Conj (ElOf (ObjectVal "b3") v4) (Lt (VarTerm v7) (ValTerm (IntVal 5)))))))

tests =
  [
    TestLabel "transInv" $ expected ~=? transInv invI env
  ]
