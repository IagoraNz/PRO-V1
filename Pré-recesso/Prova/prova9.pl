progenitor(maria, jose).
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).

avo(X, Y) :-
    progenitor(X, Z),
    progenitor(Z, Y).

ancestral(X, Y) :-
    progenitor(X, Y).
ancestral(X, Y) :-
    progenitor(X, Z),
    ancestral(Z, Y).

listarfilhos() :-
    write('Digite o nome do progenitor: '),
    read(X),
    progenitor(X, Y),
    write(Y), nl,
    fail.

listarpais() :-
    write('Digite o nome do filho: '),
    read(X),
    progenitor(Y, X),
    write(Y), nl,
    fail.