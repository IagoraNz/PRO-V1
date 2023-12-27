somalista([], 0).

somalista([Cabeca|Cauda], Soma) :-
    somalista(Cauda, SomaCauda),
    Soma is Cabeca + SomaCauda.

exemplosoma :-
    Lista = [1, 2, 3, 4, 5],
    somalista(Lista, Resultado),
    write('A soma da lista: '), write(Resultado).