%Algoritmo que adicionar elementos aleatórios com random até o tamanho da Lis ser o do informado pelo usuário.
%Deve-se utilizar operador de corte

main :-
    write('Digite o tamanho da lista: '),
    read(Tam),

    gerarLis(Tam, Lis), nl,
    write(Lis).

gerarLis(Tam, Lis) :-
    gerarLis(Tam, [], Lis).
gerarLis(0, Lis, Lis) :- !.
gerarLis(Tam, Lis, LisFinal) :-

    random(1, 100, Num),
    append(Lis, [Num], LisAux),

    TamAux is Tam - 1,
    gerarLis(TamAux, LisAux, LisFinal).