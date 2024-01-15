:- op(500, xfy, //).
:- op(500, xfy, /:).

X // Y :-
    X mod Y =:= 0,
    R is X / Y,
    write(R), nl,
    write('X divisivel por Y').

X /: Y :-
    R is X / Y,
    write('R = '), write(R).