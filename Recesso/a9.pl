inicio() :-
    write('Digite uma lista: '),
    read(Lista),
    media(Lista, Media).

media(Lista, Media) :-
    soma(Lista, Soma),
    length(Lista, Tamanho),
    Media is Soma / Tamanho,
    write('A media da lista e: '),
    write(Media).

soma([], 0).
soma([X|Y], Soma) :-
    soma(Y, Soma1),
    Soma is X + Soma1.
