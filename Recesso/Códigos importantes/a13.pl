inicio() :-
    write('Digite duas listas: '),
    read(L1),
    read(L2),
    
    comum(X, L1, L2),
    write('As listas possuem '), write(X), write(' elementos em comum'), nl.

comum(0, [], _). % Caso base, se a lista 1 for vazia, não há elementos em comum
comum(0, _, []). % Caso base, se a lista 2 for vazia, não há elementos em comum
comum(X, [H|T], L2) :- 
    membro(H, L2), % Se o elemento H estiver na lista 2
    comum(X1, T, L2), % Verifica se os elementos restantes da lista 1 estão na lista 2
    X is X1 + 1.

comum(X, [H|T], L2) :-
    not(member(H, L2)),
    comum(X, T, L2).

membro(X, [X|_]).
membro(X, [_|T]) :- 
    membro(X, T).