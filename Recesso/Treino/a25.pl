main() :-
    write('Digite a primeira lista: '),
    read(L1),

    write('Digite a segunda lista: '),
    read(L2),

    soma(SomaL, L1, L2),
    write('A soma: '), write(SomaL).

soma(0, [], []).
soma(SomaL, [H|T], [H1|T1]) :-
    soma(SomaResto, T, T1),
    SomaL is H + H1 + SomaResto.