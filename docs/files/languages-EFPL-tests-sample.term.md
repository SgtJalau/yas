# File _languages/EFPL/tests/sample.term_
**[GitHub](https://github.com/softlang/yas/blob/master/languages/EFPL/tests/sample.term)**
```
[ (dec,[],[x],binary(sub,name(x),intconst(1))), (factorial,[],[x],if(binary(eq,name(x),intconst(0)),intconst(1),binary(mul,name(x),apply(name(factorial),[apply(name(dec),[name(x)])])))), (twice,[funtype(funtype(typevar(a),typevar(a)),funtype(typevar(a),typevar(a)))],[f,x],apply(name(f),[apply(name(f),[name(x)])]))],apply(name(twice),[name(factorial),intconst(3)]).
```