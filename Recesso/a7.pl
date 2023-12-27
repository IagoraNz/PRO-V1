%1.7 Algoritmo em Prolog que realizer as operações de soma, subtração, multiplicação e divisão de dois números.

inicio() :-
    write('Digite os dois numeros e a operacao desejada(1 para soma, 2 para subt, 3 para mult e 4 para div): '),
    read(N1),
    read(N2),
    read(Op),
    (
        Op =:= 1,
        Res is N1 + N2,
        write('A soma: '), write(Res), nl;

        Op =:= 2,
        Res is N1 - N2,
        write('A subtracao: '), write(Res), nl;

        Op =:= 3,
        Res is N1 * N2,
        write('A multiplicacao: '), write(Res), nl;

        Op =:= 4,
        Res is N1 / N2,
        write('A divisao: '), write(Res), nl
    ).