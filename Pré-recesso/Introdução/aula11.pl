prop(X, [X|_]) :-
    p(X).
prop(X, [_|Y]) :-
    prop(X, Y).

enesimo(1, X, [X|_]).
enesimo(N, X, [_|Y]) :-
    enesimo(M, X, Y),
    N is M + 1.