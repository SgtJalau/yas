# File _languages/ASL/samples/adts/nat1.asl_
**[GitHub](https://github.com/softlang/yas/blob/master/languages/ASL/samples/adts/nat1.asl)**
```
// Natural numbers starting at "1"
specification nat1
import bool
sort Nat1
constructors
  one : -> Nat1
  succ : Nat1 -> Nat1
...
```