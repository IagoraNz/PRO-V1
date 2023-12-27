nota(joao, 5.0).
nota(maria, 6.0).
nota(joana, 8.0).
nota(mariana, 9.0).
nota(joaquim, 4.5).
nota(cleuza, 8.5).
nota(mara, 4.0).
nota(jose, 6.5).
nota(mary, 10.0).

aprovado(X) :-
    write('Aprovados: '),
    nota(X, Y),
    (
        (Y >= 7.0)
    ).

recuperacao(X) :-
    write('Recuperacao: '),
    nota(X, Y),
    (
        (Y >= 5, Y =< 6.9)
    ).

reprovado(X) :-
    write('Reprovados: '),
    nota(X, Y),
    (
        (Y =< 4.9)
    ).