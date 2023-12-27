arco(a, b, 3).
arco(a, d, 5).
arco(a, c, 4).
arco(c, d, 4).
arco(c, f, 5).
arco(d, e, 2).
arco(e, f, 2).

custo(X, Y, L) :- 
    arco(X, Y, L).
custo(X, Y, L) :- 
    arco(X, Z, Custo1), custo(Z, Y, Custo2), L is Custo1 + Custo2.