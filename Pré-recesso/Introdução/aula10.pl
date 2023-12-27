posicao(X,[X|_],1).
posicao(X,[_|T],P) :-
    posicao(X,T,P1),
    P is P1 + 1.