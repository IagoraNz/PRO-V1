progenitor(gilvan, iago).
progenitor(aparecida, iago).
progenitor(aparecida, indira).
progenitor(fatima, gilvan).
progenitor(fatima, edvan).
progenitor(roberto, gilvan).
progenitor(ricardina, aparecida).
progenitor(ricardina, valter).
progenitor(ricardina, socorro).
progenitor(socorro, ricardo).
progenitor(ricardina, merces).
progenitor(merces, flavia).
progenitor(merces, lamarca).

casal(aparecida, gilvan).

masculino(gilvan).
masculino(edvan).
masculino(iago).
masculino(lamarca).
masculino(roberto).
masculino(ricardo).

feminino(aparecida).
feminino(socorro).
feminino(fatima).
feminino(flavia).
feminino(indira).
feminino(merces).
feminino(ricardina).

filho(Y, X) :-
    progenitor(X, Y).
mae(X, Y) :-
    progenitor(X, Y),
    feminino(X).
avo(X, Z) :-
    progenitor(X, Y),
    progenitor(Y, Z).
irmao(X, Y) :-
    progenitor(Z, X),
    progenitor(Z, Y),
    X \== Y.
antepassado(X, Z) :-
    progenitor(X, Z).
antepassado(X, Z) :-
    progenitor(X, Y),
    antepassado(Y, Z).
tio(X, Z) :-
    progenitor(Y, Z),
    irmao(Y, X).
prima(X, Y) :-
    progenitor(Z, X),
    progenitor(W, Y),
    irmao(Z, W),
    feminino(X).
cunhado(X, Y) :-
    casal(Y, Z),
    irmao(X, Z),
    X \== Y.
sogra(Z, Y) :-
    casal(X, Y),
    progenitor(Z, X),
    feminino(Z).
