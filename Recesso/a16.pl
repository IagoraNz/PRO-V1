inicio() :-
    write('Digite uma lista: '),
    read(Lista),

    write('Digite um elemento: '),
    read(Elemento),

    adicionar(Lista, Elemento, ListaFinal),
    write(ListaFinal).

adicionar([], Elemento, [Elemento]). %Se a lista estiver vazia, o elemento é adicionado no início da lista.
adicionar([H|T], Elemento, [Elemento, H|T]) :- %Se o elemento for menor ou igual ao primeiro elemento da lista, o elemento é adicionado no início da lista.
    Elemento =< H.

adicionar([H|T], Elemento, [H|T2]) :- %Se o elemento for maior que o primeiro elemento da lista, o elemento é adicionado no final da lista.
    adicionar(T, Elemento, T2). %Chama recursivamente a função adicionar até encontrar o elemento menor ou igual ao primeiro elemento da lista.
