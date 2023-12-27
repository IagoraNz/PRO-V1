estanalista(X, Lista) :-
    member(X, Lista).

verificaelemento(X) :-
    Lista = [1, 2, 3, 4, 5],
    estanalista(X, Lista),
    write('O '), write(X), write(' esta na lista.').