main() :-
    write('Digite o valor para fazer uma cruz: '),
    read(X), nl,

    cruz(X, L1, L2, L3).

cruz(X, [X1,_, X3], [_, _, _], [X7, _, X9]) :-
    X1 is 0, X3 is 0, X7 is 0, X9 is 0,
    
    write('Matriz cruz: '), nl,
    write([X1,X, X3]), nl,
    write([X, X, X]), nl,
    write([X7, X, X9]), nl.