tamanho([], 0).
tamanho([_|C], Tam) :-
    tamanho(C, Tam1),
    Tam is 1 + Tam1.