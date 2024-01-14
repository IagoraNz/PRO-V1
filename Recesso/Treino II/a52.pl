gosta(joao, pizza).
gosta(maria, sushi).
gosta(joao, sushi).
gosta(pedro, pizza).
gosta(pedro, sorvete).
gosta(ana, sorvete).

mesmogosto(X, Y) :-
    gosta(X, Z),
    gosta(Y, Z),
    X \= Y.