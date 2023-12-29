inicio() :-
    write('Digite uma lista: '),
    read(Lista),

    somapares(Soma, Lista),
    write(Soma).

somapares(0, []).
somapares(Soma, [H|T]) :-
    (
        H mod 2 =:= 0,
        somapares(N, T),
        Soma is N + H;
        
        somapares(Soma, T)
    ).