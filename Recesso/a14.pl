inicio() :-
    write('Digite as tres notas de um aluno: '),
    read(Notas),

    media(Med, Notas),
    format('A media das notas: ~1f', [Med]), nl.

media(0, []).
media(Med, Notas) :-
    soma(Som, Notas),
    length(Notas, Tam),
    Med is Som / Tam.

soma(0, []).
soma(Som, [H|T]) :-
    H >= 0,
    H =< 10,
    soma(Som1, T),
    Som is Som1 + H.