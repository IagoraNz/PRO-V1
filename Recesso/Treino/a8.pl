%1.8 Algoritmo que verifica se uma lista é sublista de outra.

inicio() :-
    write('Digite uma lista: '),
    read(Lista),
    write('Digite outra lista: '),
    read(Lista2),

    sublista(Lista2, Lista),
    write('A segunda lista trata-se de uma sublista da primeira.').

sublista([], _).
sublista([H|T], [H|T2]) :- %Verifica se a cabeça da segunda lista é igual a cabeça da primeira lista
    sublista(T, T2).
sublista([H|T], [_|T2]) :- %Verifica se a cabeça da segunda lista é diferente da cabeça da primeira lista
    sublista([H|T], T2). %E chama a função novamente, porém com a cauda da segunda lista