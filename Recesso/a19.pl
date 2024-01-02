main() :-
    write('Matriz 3x3'), nl,
    write('Digite a primeira linha: '),
    read(L1), nl,

    write('Digite a segunda linha: '),
    read(L2), nl,

    write('Digite a terceira linha: '),
    read(L3), nl,

    write('Matriz: '), nl,
    write(L1), nl, write(L2), nl, write(L3), nl,

    write('Digite o elemento a ser buscado: '),
    read(X), nl,

    buscar(X, L1, L2, L3), nl,
    
    write('Digite o elemento para substituir na diagonal principal da matriz: '),
    read(Z),

    diagonalP(Z, L1, L2, L3), nl,

    write('Digite o elemento para substituir na diagonal secundaria da matriz: '),
    read(Y),

    diagonalS(Y, L1, L2, L3), nl.

buscar(X, [X|_], _, _) :- %X está na cabeça da primeira lista
    write('O elemento esta na linha 0').
buscar(X, _, [X|_], _) :- %X está na cabeça da segunda lista
    write('O elemento esta na linha 1').
buscar(X, _, _, [X|_]) :-%X está na cabeça da terceira lista
    write('O elemento esta na linha 2').
buscar(X, [_|T1], [_|T2], [_|T3]) :- %Ou nos corpos das listas
    buscar(X, T1, T2, T3).

diagonalP(Z, [_, X2, X3], [X4, _, X6], [X7, X8, _]) :-
    write('Principal: '), nl,
    write([Z, X2, X3]), nl,
    write([X4, Z, X6]), nl,
    write([X7, X8, Z]), nl.

diagonalS(Y, [X1, X2, _], [X4, _, X6], [_, X8, X9]) :-
    write('Secundaria: '), nl,
    write([X1, X2, Y]), nl,
    write([X4, Y, X6]), nl,
    write([Y, X8, X9]), nl.