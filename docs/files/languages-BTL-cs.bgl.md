# File _languages/BTL/cs.bgl_
**[GitHub](https://github.com/softlang/yas/blob/master/languages/BTL/cs.bgl)**
```
[true] expr : "true" ;
[false] expr : "false" ;
[zero] expr : "zero" ;
[succ] expr : "succ" expr ;
[pred] expr : "pred"  expr ;
[iszero] expr : "iszero" expr ;
[if] expr : "if" expr "then" expr "else" expr ;
```