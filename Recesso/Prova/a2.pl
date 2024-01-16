fatorial(0, 1).
fatorial(N, Fat) :-
    N > 0,
    N1 is N - 1,
    fatorial(N1, Fat1),
    Fat is Fat1 * N.

somaate(1,1).
somaate(N, Soma) :-
    N > 0,
    N1 is N - 1,
    somaate(N1, Soma1),
    Soma is Soma1 + N.