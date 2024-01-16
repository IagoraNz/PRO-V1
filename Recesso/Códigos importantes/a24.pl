main :-
    write('Digite uma lista: '),
    read(Lista),
    
    media(Lista, Media),
    write('Media: '), write(Media), nl,
    
    dividir(Lista, Media, ListaMaiores, ListaMenores),
    
    write('Elementos maiores que a media: '), write(ListaMaiores), nl,
    write('Elementos menores que a media: '), write(ListaMenores), nl.

soma([], 0).
soma([H|T], Soma) :-
    soma(T, Soma1),
    Soma is Soma1 + H.

tamanho([], 0).
tamanho([_|T], Tam) :-
    tamanho(T, Tam1),
    Tam is Tam1 + 1.

media(Lista, Med) :-
    soma(Lista, Soma),
    tamanho(Lista, Tam),
    Med is Soma / Tam.

dividir([], _, [], []).
dividir([H|T], Media, [H|L1], L2) :-
    H > Media,
    dividir(T, Media, L1, L2).
dividir([H|T], Media, L1, [H|L2]) :-
    H < Media,
    dividir(T, Media, L1, L2).
dividir([H|T], Media, L1, L2) :-
    H =:= Media,
    dividir(T, Media, L1, L2).