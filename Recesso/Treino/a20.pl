main() :-
    write('Digite uma matriz: '), nl,
    read(L1),
    read(L2),
    read(L3), nl,

    write('Agora escolha uma linha (0, 1, 2) para ser somada e substituir na diagonal secundaria da matriz: '),
    read(X),

    (
        X =:= 0,
        soma(Soma, L1),
        write('A soma: '), write(Soma), nl;

        X =:= 1,
        soma(Soma, L2),
        write('A soma: '), write(Soma), nl;

        X =:= 2,
        soma(Soma, L3),
        write('A soma: '), write(Soma), nl
    ),

    diagonalSS(Soma, L1, L2, L2).

soma(0, []).
soma(Soma, [H|T]) :-
    soma(Soma1, T),
    Soma is Soma1 + H.

diagonalSS(Soma, [X1, X2, _], [X4, _, X6], [_, X8, X9]) :-
    write('Nova matriz: '), nl,
    write([X1, X2, Soma]), nl,
    write([X4, Soma, X6]), nl,
    write([Soma, X8, X9]), nl.
