% BEGIN ...
:- module(egtlAbstract, []).

% END ...
qstring:(_, String, _) => Atom :- atom_codes(Atom, String).
name:String => Atom :- name(Atom, String).