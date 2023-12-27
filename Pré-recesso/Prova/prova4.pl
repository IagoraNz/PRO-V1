maiorquecem() :-
    write('Digite o valor a ser comparado: '),
    read(X),
    (
        (X > 100, write('X maior que cem'));
        (X =< 100, write('X menor que cem'))
    ).