%1.2
%Um código que verifica se um numero é par ou impar e printe além disso o seu quadrado.
%O algoritmo deve perguntar um numero para o usuário inserir e fazer as ações

par(X) :-
    X mod 2 =:= 0.

impar(X) :-
    X mod 2 =:= 1.

inicio() :-
    write('Digite um numero: '),
    read(X),
    (
        par(X),
        Q is X * X,
        write('Numero par e o seu quadrado: '), write(Q);

        impar(X),
        Q is X * X,
        write('Numero impar e o seu quadrado: '), write(Q)
    ).