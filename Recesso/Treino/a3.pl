%1.3
%Criar um algoritmo que pergunte as 3 notas de um aluno
%Calcule e exiba a media e diga a situação do aluno
%Se o aluno ficar em Exame Final, solicite a o nota do exame e calcule a nova media

inicio() :-
    write('Digite as tres notas: '),
    read(N1),
    read(N2),
    read(N3),

    Media is (N1 + N2 + N3) / 3,

    write('Media: '), write(Media), nl,
    verificaMedia(Media).

verificaMedia(Media) :-
    (
        Media >= 7,
        write('Aprovado');

        Media >= 4,
        write('Exame final'), nl,
        write('Digite a nota do exame final: '),
        read(EF),
        NMedia is (EF + Media) / 2,
        write('Nova media: '), write(NMedia), nl,
        (
            NMedia >= 6,
            write('Aprovado');

            NMedia < 6,
            write('Reprovado')
        );

        Media < 4,
        write('Reprovado')
    ).