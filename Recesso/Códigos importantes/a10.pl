inicio() :-
    write('Digite uma lista: '),
    read(L1),

    somaimpares(Soma, L1),
    write('A soma dos impares: '), write(Soma).

somaimpares(0, []).
somaimpares(Soma, [H|T]) :-
    H mod 2 =:= 1,
    somaimpares(Soma1, T),
    Soma is Soma1 + H;
    %Se não for impar, chama o próximo elemento do corpo
    somaimpares(Soma, T).