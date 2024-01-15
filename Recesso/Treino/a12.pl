main() :-
    write('Digite uma lista: '),
    read(Lista),

    write('Digite um numero: '),
    read(Num),

    listasomada(Lista, Num, LS),
    write(LS).

listasomada([], _, []).
listasomada([H|T], Num, [HS|TS]) :-
    listasomada(T, Num, TS),
    HS is H + Num. %A cabeça da lista somada com o numero é a cabeça da lista somada
    %Somando, portanto, com todos os elementos da lista.