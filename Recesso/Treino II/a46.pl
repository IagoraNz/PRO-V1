main :-
    write('Digite uma lista: '),
    read(Lista),

    ultimo(Lista, Ult),
    write('O ultimo elemento da lista: '), write(Ult).

ultimo([Ult], Ult).
ultimo([_|T], Ult) :-
    ultimo(T, Ult).