:- op(500, xfx, ++).

soma([], 0).
soma([X|Y], Soma) :- 
    soma(Y, Soma1), 
    Soma is X + Soma1.

++(X, Y, Soma) :- 
    soma([X, Y], Soma).