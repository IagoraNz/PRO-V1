professor(carlos, calculo).
professor(ana, estrutura).
professor(pedro, programacao).

funcionario(pedro, ufrj).
funcionario(ana, puc).
funcionario(carlos, puc).

aluno(joao, calculo).
aluno(maria, calculo).
aluno(joel, estrutura).
aluno(joel, programacao).

frequenta(joao, puc).
frequenta(maria, puc).
frequenta(joel, ufrj).

alunos(X, Y) :-
    funcionario(Y, Z),
    frequenta(X, Z),
    professor(Y, W),
    aluno(X, W).

fazparteda(X, Y) :-
    frequenta(X, Y);
    funcionario(X, Y).