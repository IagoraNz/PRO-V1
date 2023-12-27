prop(X, [X|_]) :-
    p(X).
prop(X, [_|Y]) :-
    prop(X, Y).

%E como eu faço a consulta com numeros
%?- prop(1, [1,2,3,4,5,6,7,8,9,10]).

enesimo(1, X, [X|_]).
enesimo(N, X, [_|Y]) :-
    enesimo(M, X, Y),
    N is M + 1.

%?- enesimo(3, X, [1,2,3,4,5,6,7,8,9,10]).