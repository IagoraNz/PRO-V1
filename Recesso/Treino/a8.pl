inicio() :-
    write('Digite uma lista: '),
    read(Lista),
    write('Digite outra lista: '),
    read(Lista2),

    sublista(Lista2, Lista),
    write('A segunda lista trata-se de uma sublista da primeira.').

sublista([], _).
sublista([H|T], [H|T2]) :-
    sublista(T, T2).
sublista([H|T], [_|T2]) :-
    sublista([H|T], T2).
