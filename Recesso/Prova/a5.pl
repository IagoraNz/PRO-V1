intervalo(A,B,A) :- 
    A < B.
intervalo(A,B,L) :-
    A < B,
    A1 is A + 1,
    intervalo(A1,B,L).