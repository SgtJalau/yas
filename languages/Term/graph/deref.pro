% ID found
getObject(Id & O, Id, O).

% ID not found
getObject(Id1 & O1, Id2, O2) :- Id1 \= Id2, getObject(O1, Id2, O2).

% Search among values of key-value pairs
getObject(D, Id, O) :- dictToList(D, L), unzip(L, _, LV), getObject(LV, Id, O).

% Search among elements of a list
getObject(L, Id, O) :- member(E, L), getObject(E, Id, O).
