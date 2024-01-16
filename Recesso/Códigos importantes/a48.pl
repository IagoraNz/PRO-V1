main :-
    write('Digite uma lista: '),
    read(Lista),

    tamanho(Tam, Lista),
    (
        Tam mod 2 =:= 1,
        TP is (Tam // 2) + 1,
        busca(Lista, TP, Elemento),
        write('Elemento do meio: '), write(Elemento), nl;

        write('A lista deve ser impar')
    ).

tamanho(0, []).
tamanho(Tam, [_|T]) :-
    tamanho(Tam1, T),
    Tam is Tam1 + 1.

busca([H|_], 1, H) :- !.
busca([_|T], Posicao, Elemento) :-
    Posicao1 is Posicao - 1,
    busca(T, Posicao1, Elemento).