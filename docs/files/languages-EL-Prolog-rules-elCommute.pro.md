# File _languages/EL/Prolog/rules/elCommute.pro_
**[GitHub](https://github.com/softlang/yas/blob/master/languages/EL/Prolog/rules/elCommute.pro)**
```
% BEGIN ...
:- module(elCommute, []).
% END ...
binary(add, X, Y) ~> binary(add, Y, X).
binary(mul, X, Y) ~> binary(mul, Y, X).
```