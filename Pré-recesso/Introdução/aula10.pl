posicao(X,[X|_],1). %Se o elemento for a cabeça da lista, a posição é 1
posicao(X,[_|T],P) :- %Se o elemento não for a cabeça da lista, a posição é a posição do elemento na cauda + 1
    posicao(X,T,P1), %P1 é a posição do elemento na cauda
    P is P1 + 1.