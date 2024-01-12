main() :-
    write('Digite duas listas: '),
    read(L1),
    read(L2),

    concatena(L1, L2, LC),
    write('Lista concatenada: '), write(LC), nl.

concatena([], L, L).
concatena([X|L1], L2, [X|L3]) :- 
    concatena(L1, L2, L3).