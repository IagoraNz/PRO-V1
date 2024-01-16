intervalo(A,B,A) :-
    A < B.
intervalo(A,B,L) :- 
    A < B, %Enquanto A for menor que B
    A1 is A + 1, %Incrementa A
    intervalo(A1,B,L). %Chama recursivamente a função

% intervalo(A,B,L) :- 
%     A < B, %Enquanto A for menor que B
%     L = A,
%     write(L), nl, %Escreve A
%     A1 is A + 1, %Incrementa A
%     intervalo(A1,B,L1). %Chama recursivamente a função