tamanho([],0).
tamanho([Y|T],N) :- 
    tamanho(T,N1), 
    N is N1 + 1.