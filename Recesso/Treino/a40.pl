main :-
    write('Digite uma lista e um elemento: '),
    read(Lista),
    read(Elem),

    adiciona(Elem, Lista, LA),
    write(LA), nl.

adiciona(_, [], []).
adiciona(Elem, [H|T], [Elem, H|T]).
adiciona(Elem, [H|T], [H|T1]) :-
    adiciona(Elem, T, T1).

% Outra forma, adicionando o elemento ao final da lista:
% adiciona(Elem, [], [Elem]).
% adiciona(Elem, [H|T], [H|T1]) :-
%     adiciona(Elem, T, T1).