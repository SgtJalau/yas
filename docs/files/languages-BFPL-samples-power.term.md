# File _languages/BFPL/samples/power.term_
**[GitHub](https://github.com/softlang/yas/blob/master/languages/BFPL/samples/power.term)**
```
[ (power, ([inttype,inttype],inttype),[n,x],if(binary(eq,arg(n),intconst(0)),intconst(1),binary(mul,arg(x),apply(power,[binary(sub,arg(n),intconst(1)),arg(x)]))))],apply(power,[intconst(3),intconst(2)]).
```