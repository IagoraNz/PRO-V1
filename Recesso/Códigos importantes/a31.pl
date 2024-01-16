%Algoritmo que troque os valores de duas listas

main() :-
    write('Digite as listas: '),
    read(L1),
    read(L2),

    troca(L1, L2, NL1, NL2),
    write('Nova L1: '), write(NL1), nl,
    write('Nova L2: '), write(NL2), nl.

% troca([], [], [], []).
% troca([H1|T1], [H2|T2], [H2|NT1], [H1|NT2]) :-
%     troca(T1, T2, NT1, NT2).

troca(L1, L2, L2, L1).
