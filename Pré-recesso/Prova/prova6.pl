progenitor(maria, joao).
progenitor(joao, pedro).
progenitor(pedro, augusto).
progenitor(augusto, james).

descendente(X, Y) :-
    progenitor(Y, X).
descendente(X, Y) :-
    progenitor(Y, Z),
    descendente(X, Z).