tamanholista([], 0).
tamanholista([_ | Corpo], N) :- 
    tamanholista(Corpo, N1), 
    N is N1 + 1.