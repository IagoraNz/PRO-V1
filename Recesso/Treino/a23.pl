main() :-
    write('Digite uma lista: '),
    read(Lista), nl,

    write('Digite um elemento a ser adicionado: '),
    read(A),

    adicionar(A, Lista, Lista2),

    write('Lista resultante: '), write(Lista2), nl, nl,

    write('Digite um elemento a ser removido: '),
    read(B),

    remover(B, Lista2, Lista3),

    write('Lista resultante: '), write(Lista3), nl, nl,

    write('Digite uma elemento a ser buscado: '),
    read(C),

    buscar(C, Lista3, R),
    (R =:= 1, write('Elemento encontrado!'), nl; write('Elemento nao encontrado!'), nl), nl,

    write('Digite uma segunda lista: '),
    read(Lista4),

    concatenar(Lista3, Lista4, Lista5),

    write('Lista resultante: '), write(Lista5), nl,

    tamanho(Lista5, Tamanho), nl,

    write('Tamanho da lista: '), write(Tamanho), nl.

adicionar(A, [], Lista2) :-
    Lista2 = [A].
adicionar(A, Lista, Lista2) :-
    Lista2 = [A|Lista].

remover(B, [B|Lista], Lista).
remover(B, [A|Lista], [A|Lista2]) :-
    remover(B, Lista, Lista2).

buscar(C, [C|_], 1).
buscar(C, [_|Lista], R) :-
    buscar(C, Lista, R).
buscar(_, [], 0).

concatenar([], Lista, Lista).
concatenar([A|Lista], Lista2, [A|Lista3]) :-
    concatenar(Lista, Lista2, Lista3).

tamanho([], 0).
tamanho([_|Lista], Tamanho) :-
    tamanho(Lista, Tamanho2),
    Tamanho is Tamanho2 + 1.