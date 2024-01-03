%1.5 Implemente um algoritmo que leia um número inteiro e escreva o seu antecessor e o seu sucessor.

inicio() :-
    write('Digite um numero: '),
    read(N),
    Ante is N - 1,
    write('Antecessor: '), write(Ante), nl,
    Su is N + 1,
    write('Sucessor: '), write(Su), nl.