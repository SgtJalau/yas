:- module(bmplAbstract, []).

% Context-free mapping for compound terms
(expr, functor(F, [(E, Es)])) ~> functor(F, [E|Es]).

% Lexical mapping for strings
(string, (_, String, _)) ~> Atom :-
    atom_codes(Atom, String).

% Lexical mapping for integers
(integer, Digits) ~> Int :-
    number_codes(Int, Digits).

% Lexical mapping for function symbols
(fsym, (Char, String)) ~> Atom :-
    name(Atom, [Char|String]).

% Lexical mapping for variables
(var, (Char, String)) ~> Atom :-
    name(Atom, [Char|String]).
(var, String) ~> Atom :-
    is_list(String),
    name(Atom, [0'_|String]).
