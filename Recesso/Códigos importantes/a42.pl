main :-
    write('Digite duas listas: '),
    read(L1),
    read(L2),

    media(Media, L2),
    mult(Media, L1, L3),

    write('A media: '), write(Media), nl,
    write('A lista multiplicada: '), write(L3).

soma(0, []).
soma(Soma, [H|T]) :-
    soma(Soma1, T),
    Soma is Soma1 + H.

tamanho(0, []).
tamanho(Tam, [_|T]) :-
    tamanho(Tam1, T),
    Tam is Tam1 + 1.

media(0, []).
media(Media, [H|T]) :-
    soma(Soma, [H|T]),
    tamanho(Tam, [H|T]),
    Media is Soma / Tam.

mult(_, [], []).
mult(Media, [H|T], [H1|T1]) :-
    mult(Media, T, T1),
    H1 is H * Media.