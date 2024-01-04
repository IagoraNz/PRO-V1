carac(lindo, joao).
carac(linda, maria).
carac(esperto, joao).
carac(esperto, luis).
carac(lindo, iago).
carac(alta, luiza).

mesmacarac(X, Y) :-
    carac(Z, X),
    carac(Z, Y),
    X \= Y.