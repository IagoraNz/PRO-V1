%Usando os conceitos de Operadores e Recursão, faça:
%Um algoritmo que recebe um número N e dois números X e Y e verifica se N está entre X e Y. Ou seja, se N é intervalo fechado [X, Y].
%Além disso, deverá printar o intervalo completo.
%A estrutura base de recursão é: N :: [X, Y]. Onde N é o número a ser verificado e X e Y são os limites do intervalo.
%:: deve ser implementado como um operador.

:- op(500, xfy, ::).

main() :-
    write('Numero para verificar: '),
    read(N),
    write('Intervalo 1: '),
    read(X),
    write('Intervalo 2: '),
    read(Y),
    (
        N >= X,
        N =< Y,
        write('Dentro do intervalo'), nl
    ),
    N :: [X, Y].

N :: [X, Y] :-
    N >= X,
    N =< Y,
    write(X), nl,
    X1 is X + 1,
    X1 :: [X1, Y].