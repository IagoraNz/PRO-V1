:- op(500, xfy, ++).

X ++ Y :-
    R is X + Y,
    write('R = '), write(R).