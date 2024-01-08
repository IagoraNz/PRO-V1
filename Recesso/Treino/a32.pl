%1.32 Algoritmo que inverte uma lista

main() :-
    write('Digite uma lista: '),
    read(Lista),

    inverte(Lista, LInv),
    write(LInv).

inverte([], []).
inverte([H|T], LInv) :-
    inverte(T, LInv1),
    adiciona(LInv1, H, LInv).

adiciona([], X, [X]).
adiciona([H|T], X, [H|T1]) :- %As duas listas tem o mesmo primeiro elemento, pois o elemento X é adicionado no final da lista
    adiciona(T, X, T1).