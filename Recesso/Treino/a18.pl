%Algoritmo que receba duas listas e um elemento e verifique se o elemento 
%está presente em ambas as listas, somente na primeira, somente na segunda ou em nenhuma.
%Além disso, utilize repeat para o usuário poder consultar mais de uma vez, até dizer que não quer.

main() :-
    repeat,
    write('Digite a primeira lista: '),
    read(L1),

    write('Digite a segunda lista: '),
    read(L2),

    write('Digite o elemento a ser buscado em ambas as listas: '),
    read(Elem),

    busca(L1, L2, Elem),

    write('Deseja continuar (s/n)?: '),
    read(Cont),

    Cont \= s.

busca([], [], _).
busca([H|T], [H1|T1], Elem) :-
    member(Elem, [H|T]), member(Elem, [H1|T1]),
    write('Esta presente!'), nl;

    member(Elem, [H|T]), not(member(Elem, [H1|T1])),
    write('Somente na primeira lista'), nl;

    not(member(Elem, [H|T])), member(Elem, [H1|T1]),
    write('Somente na segunda lista'), nl;

    not(member(Elem, [H|T])), not(member(Elem, [H1|T1])),
    write('Em nenhuma lista'), nl.