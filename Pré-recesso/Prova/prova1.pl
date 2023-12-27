homem(iago).
homem(gilvan).
homem(lamarca).
mulher(merces).
mulher(maria).
mulher(indira).
mulher(flavia).

progenitor(maria, iago).
progenitor(gilvan, iago).
progenitor(maria, indira).
progenitor(merces, flavia).
progenitor(merces, lamarca).

filho(X, Y) :- 
    progenitor(Y, X),
    homem(X).

filha(X, Y) :-
    progenitor(Y, X),
    mulher(X).