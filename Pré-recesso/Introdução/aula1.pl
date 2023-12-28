estanalista(X, Lista) :- % X esta na lista se...
    member(X, Lista).

verificaelemento() :-
    %O usuario digita uma lista
    write('Digite uma lista e o elemento a ser buscado: '),
    read(Lista),
    read(X),
    estanalista(X, Lista),
    write('O '), write(X), write(' esta na lista.');
    write('Nao esta na lista.').