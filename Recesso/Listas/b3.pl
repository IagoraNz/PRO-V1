consecutivos(X, Y, [X, Y|_]).
consecutivos(X, Y, [_|C]) :-
    consecutivos(X, Y, C).