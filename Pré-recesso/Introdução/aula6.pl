concatena([],L,L). %A lista vazia concatenada com qualquer lista é a própria lista
concatena([X|L1],L2,[X|L3]) :- %X será o primeiro elemento da lista concatenada
    concatena(L1,L2,L3). %Portanto, concatena-se os corpos das listas L1 e L2 e o resultado é L3

%Passo a passo:
%concatena([1, 2], [3, 4], L3)
%[1|concatena([2], [3, 4], L3)]
%[1|[2|concatena([], [3, 4], L3)]]
%[1|[2|[3|concatena([], [4], L3)]]]
%[1|[2|[3|[4|concatena([], [], L3)]]]]
%[1|[2|[3|[4|L3]]]]
%[1|[2|[3|[4|[]]]]]
%[1|[2|[3|[4]]]]
%[1|[2|[3, 4]]]
%[1|[2, 3, 4]]
%[1, 2, 3, 4]