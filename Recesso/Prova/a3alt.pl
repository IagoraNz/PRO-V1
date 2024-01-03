main() :-
    write('Digite as notas: '),
    read(Notas),

    media(Notas, Media),

    write('A media das notas: '), write(Media), nl,

    (
        Media >= 7,
        write('Aprovado'), nl, !
    );
    (
        Media >= 4,
        write('Exame final'), nl, !
    );
    (
        Media < 4,
        write('Reprovado'), !
    ).

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