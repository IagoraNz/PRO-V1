main :-
    write('Digite uma lista: '),
    read(Lista),

    write('Digite um elemento: '),
    read(Elem),

    adicionaI(Elem, Lista, LA),
    write(LA), nl,

    adicionaF(Elem, Lista, LA1),
    write(LA1).

adicionaI(_, [], []).
adicionaI(Elem, [H|T], [Elem, H|T]).
adicionaI(Elem, [H|T], [H|T1]) :-
    adicionaI(Elem, T, T1).

adicionaF(Elem, [], [Elem]).
adicionaF(Elem, [H|T], [H|T1]) :-
    adicionaF(Elem, T, T1).