# File _languages/BGL/bglAcceptBottomUp.pro_
**[GitHub](https://github.com/softlang/yas/blob/master/languages/BGL/bglAcceptBottomUp.pro)**
```
% BEGIN ...
:- module(bglAcceptBottomUp, []).

% END ...
% Begin with empty stack 
accept(G, I) :- steps(G, [], I).

...
```