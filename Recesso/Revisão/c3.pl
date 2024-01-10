aluno(marcelo).
aluno(roberto).
aluno(rodrigo).

consultaSem :-
    aluno(X),
    write(X).

consultaCom :-
    aluno(X),
    write(X), nl,
    fail.