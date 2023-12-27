remove(X, [X|C], C).
remove(X,[Y|C], [Y|D]) :-
    remove(X, C, D).