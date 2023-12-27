membro(X, L).
membro(X, [X|C]) :-
    membro(X, C). 