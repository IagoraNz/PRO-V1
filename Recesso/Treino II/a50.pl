progenitor(maria, pedro).
progenitor(joao, pedro).
progenitor(joao, tereza).
progenitor(tereza, fabiana).
progenitor(fernando, maria).
progenitor(joana, maria).
progenitor(maria, ana).
progenitor(pedro, ana).
progenitor(felipe, ricardo).
progenitor(ricardo, augusto).
progenitor(augustina, augusto).

homem(joao).
homem(pedro).
homem(fernando).
homem(felipe).
homem(augusto).
homem(ricardo).

mulher(maria).
mulher(joana).
mulher(ana).
mulher(augustina).

pai(X, Y) :-
    progenitor(X, Y),
    homem(X).

mae(X, Y) :-
    progenitor(X, Y),
    mulher(X).

irma(X, Y) :-
    progenitor(Z, X),
    progenitor(Z, Y),
    mulher(X),
    X \= Y.

irmao(X, Y) :-
    progenitor(Z, X),
    progenitor(Z, Y),
    homem(X),
    X \= Y.

tio(X, Y) :-
    progenitor(Z, Y),
    irmao(X, Z),
    homem(X).

tia(X, Y) :-
    progenitor(Z, Y),
    irma(X, Z),
    mulher(X).

avo(X, Y) :-
    progenitor(X, Z),
    progenitor(Z, Y).