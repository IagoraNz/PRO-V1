quadrado(retangulo(SupEsq, InfDir)) :-
    SupEsq = (X1, Y1),
    InfDir = (X2, Y2),
    Largura is X2 - X1,
    Altura is Y2 - Y1,
    Largura = Altura.