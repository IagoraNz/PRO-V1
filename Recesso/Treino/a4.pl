%1.4 Implemente um algoritmo em Prolog que mostre os divisiveis de um numero inserido pelo usuario

inicio() :-
    write('Digite um numero: '),
    read(N),
    divisivelde(1, N).

divisivelde(N, N) :- 
    write(N), !.
divisivelde(X, N) :-
    N mod X =:= 0,
    write(X), nl,
    X1 is X + 1,
    divisivelde(X1, N).

divisivelde(X, N) :- %Caso o numero nao seja divisivel, apenas incrementa o valor de X
    X1 is X + 1,
    divisivelde(X1, N).