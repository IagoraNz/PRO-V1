amigo(joao, pedro).
amigo(carlos, joao).
amigo(maria, ana).
amigo(ana, joao).
amigo(ana, maria).
amigo(maria, pedro).
amigo(luiz, maria).
amigo(luiz, andressa).
amigo(andressa, carlos).

main() :-
    write('Digite o nome da pessoa: '),
    read(Pessoa),

    contaamigos(Pessoa, Total),
    write('Total de amigos: '), write(Total), nl.

contaamigos(Pessoa, Total) :-
    contaamigos(Pessoa, 0, Total).

contaamigos(Pessoa, Cont, Total) :-
    amigo(Pessoa, Amigo),
    Cont1 is Cont + 1,
    contaamigos(Amigo, Cont1, Total).

contaamigos(_, Total, Total).