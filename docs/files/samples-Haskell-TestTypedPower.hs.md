# File _samples/Haskell/TestTypedPower.hs_
**[GitHub](https://github.com/softlang/yas/blob/master/samples/Haskell/TestTypedPower.hs)**
```
-- BEGIN ...
{-# LANGUAGE TemplateHaskell #-}
import TypedPower
import Language.Haskell.TH
import Language.Haskell.TH.Syntax
-- END ...
power3 :: Int -> Int
power3 = $$(mk_power 3)
-- BEGIN ...
main = do
  runQ (mk_power 3 >>= return . unType) >>= putStrLn . pprint
  print $ power3 3
-- END ...
```