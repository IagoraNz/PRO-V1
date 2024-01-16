%1.33 Algoritmo para contar quantas vezes um elemento aparece em uma lista

main() :-
    write('Digite uma lista: '),
    read(Lista),

    write('Digite um elemento: '),
    read(Elem),

    contar(Vezes, Elem, Lista),
    write('O elemento aparece '), write(Vezes), write(' vezes').

contar(0, _, []).
contar(Vezes, Elem, [H|T]) :- %Essa condição é necessária para caso o elemento não seja encontrado ele passe para o próximo elemento da lista
    Elem \= H,
    contar(Vezes, Elem, T).
contar(Vezes, Elem, [H|T]) :-
    Elem =:= H,
    contar(Vezes1, Elem, T),
    Vezes is Vezes1 + 1.