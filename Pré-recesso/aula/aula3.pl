emordem([]).
emordem([_]).
emordem([X, Y | Tail]) :- 
    X =< Y, 
    emordem([Y | Tail]).