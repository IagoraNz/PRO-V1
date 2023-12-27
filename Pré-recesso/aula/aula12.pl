soma(0,0).
soma(N,S):-
    N > 0,
    N1 is N - 1,
    soma(N1,S1),
    S is S1 + N.

%Dizer se um numero é par ou impar
verificar() :-
    write('Digite um numero: '),
    read(N),
    (
        N mod 2 =:= 0, write('Par');
        N mod 2 =:= 1, write('Impar')
    ).

%2.1
gosta(joao, jazz).
gosta(joao, renata).
gosta(joao, lasanha).
gosta(renata, joao).
gosta(renata, lasanha).

%2.2 Contar até 100 e usar cut quando chegar no 100
contar(X) :-
    write(X), nl, 
    X = 10, !.
contar(X) :-  
    X1 is X + 1, 
    contar(X1). %Ele manda para verificar se X chegou no limite estabelecido por cut

%2.3 Divisível por 4 até um dado número
divisivel(X) :-
    X = 0, !.
divisivel(X) :-
    X mod 4 =:= 0,
    write(X), nl,
    X2 is X - 4,
    divisivel(X2). 

