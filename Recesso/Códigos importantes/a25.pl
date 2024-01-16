main() :-
    write('Digite a primeira lista: '),
    read(L1),

    write('Digite a segunda lista: '),
    read(L2),

    soma(Soma, L1, L2),
    write('A soma: '), write(Soma).

soma(0, [], []).
soma(Soma, [H|T], [H1|T1]) :-
    soma(Soma1, T, T1),
    Soma is Soma1 + H + H1. %Soma que nem quando há 2 variáveis