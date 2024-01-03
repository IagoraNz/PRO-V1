somalista([], 0).
somalista([H|T], Soma) :-
    somalista(T, Soma1),
    Soma is Soma1 + H.