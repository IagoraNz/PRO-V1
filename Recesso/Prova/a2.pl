fatorial(0, 1).
fatorial(N, Fat) :-
    N > 0,
    N1 is N - 1,
    fatorial(N1, Fat1),
    Fat is Fat1 * N.