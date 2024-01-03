soma([], 0).
soma([H|T], Soma) :-
    soma(T, Soma1),
    Soma is Soma1 + H.

media([], 0).
media([H|T], Media) :-
    soma([H|T], Soma),
    length([H|T], Tam),
    Tam > 0,
    Media is Soma / Tam.

situacao(Media, Sit) :-
    (
        Media >= 7,
        Sit = 'Aprovado', !
        ;
        Media >= 4,
        Sit = 'Exame final', !
        ;
        Media < 4,
        Sit = 'Reprovado', !
    ).