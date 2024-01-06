main() :-
    write('Digite uma lista: '),
    read(Lista),

    write('Digite um elemento: '),
    read(Elem),

    contar(Vezes, Elem, Lista),
    write('O elemento aparece '), write(Vezes), write(' vezes').

contar(0, _, []).
contar(Vezes, Elem, [H|T]) :-
    Elem \= H,
    contar(Vezes, Elem, T).
contar(Vezes, Elem, [H|T]) :-
    Elem =:= H,
    contar(Vezes2, Elem, T),
    Vezes is Vezes2 + 1.