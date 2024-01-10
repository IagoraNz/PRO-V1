adivinhe :-
    N is random(5) + 1,
    repeat,
    lerN(G),
    processar(G, N).

lerN(G) :-
    write('Digite um numero (1 a 5): '),
    read(G).

processar(G, N) :-
    G =:= N, write('Voce acertou!'), nl;
    G \= N, write('Errou! Tente novamente.'), nl, fail.