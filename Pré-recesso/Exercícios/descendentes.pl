progenitor(maria, josé).
progenitor(joão, josé).
progenitor(joão, ana).
progenitor(josé, júlia).
progenitor(josé, íris).
progenitor(íris, jorge).
masculino(joão).
masculino(josé).
masculino(jorge).
feminino(maria).
feminino(ana).
feminino(júlia).
feminino(íris).
filho(Y, X) :- 
progenitor(X,Y). 
mae(X,Y) :- 
    progenitor(X, Y), 
    feminino(X). 
avo(X, Z) :-
    progenitor(X, Y), 
    progenitor(Y, Z).
irma(X, Y) :- 
    progenitor(Z, X),
    progenitor(Z, Y),
    feminino(X), 
    diferente(X, Y).
antepassado(X, Z) :-
    progenitor(X, Z).
antepassado(X, Z) :-
    progenitor(X, Y),
    antepassado(Y, Z).