membro(X, [X|C]).
membro(X, [Y|C]) :- 
    membro(X, C).