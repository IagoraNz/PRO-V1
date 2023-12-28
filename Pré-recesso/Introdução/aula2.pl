tamanholista([], 0). %Lista vazia tem tamanho 0
tamanholista([_ | Corpo], N) :- %A cabeça da lista é ignorada, e o tamanho do corpo é N1.
    tamanholista(Corpo, N1), %N1 é o tamanho do corpo
    %N1 inicialmente é 0, e a cada recursão, é incrementado em 1.
    %N1 é calculado recursivamente, até que a lista seja vazia, e o tamanho do corpo seja 0.
    %N1 is N1 + 1. 
    N is N1 + 1. %N é o tamanho da lista, que é o tamanho do corpo + 1.

%O tamanho do corpo é calculado recursivamente, até que a lista seja vazia, e o tamanho do corpo seja 0.
%Ao final, o tamanho da lista é o tamanho do corpo + 1, que é o tamanho da cabeça + o tamanho do corpo.