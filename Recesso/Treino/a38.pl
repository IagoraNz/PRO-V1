%Algoritmo que dado duas listas inseridas pelo usuário
%retorne uma terceira lista com o resultado da multiplicação entre elas
%Exemplo: Lista1 = [1,2,3], Lista2 = [2,1,3], Lista3 = [2, 2, 9]

main() :-
    write('Digite duas listas: '),
    read(L1),
    read(L2),

    multiplica(L1, L2, L3), nl,
    write(L3).

multiplica([], [], []).
multiplica([H1|T1], [H2|T2], [HM|T3]) :-
    multiplica(T1, T2, T3),
    HM is H1 * H2.