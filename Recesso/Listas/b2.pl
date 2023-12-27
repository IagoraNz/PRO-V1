ultimoelemento(X, [X]).
ultimoelemento(X, [_|C]) :-
    ultimoelemento(X, C).