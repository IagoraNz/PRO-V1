%Algoritmo que calcule a media de uma lista e substitua os numeros maiores ou igual a media por 1 e menores
%que a média por 0.

main :-
    write('Digite uma lista: '),
    read(Lista),

    media(Med, Lista),
    write('A media: '), write(Med), nl,

    subs(Med, Lista, ListaSubstituida),
    write('Lista substituida: '), write(ListaSubstituida), nl.

soma(0, []).
soma(Soma, [H|T]) :-
    soma(Soma1, T),
    Soma is Soma1 + H.

tamanho(0, []).
tamanho(Tam, [H|T]) :-
    tamanho(Tam1, T),
    Tam is Tam1 + 1.

media(Med, Lista) :-
    soma(Soma, Lista),
    tamanho(Tam, Lista),
    Med is Soma / Tam.

subs(_, [], []).
subs(Med, [H|T], [H1|T1]) :-
    subs(Med, T, T1),
    (
        Med =< H,
        H1 is 1;

        Med > H,
        H1 is 0
    ).