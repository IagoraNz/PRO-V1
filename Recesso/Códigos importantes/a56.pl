membro(X, [X|_]).
membro(X, [_|T]) :- 
    membro(X, T).

intersecao([], _, []).
intersecao([H|T], L2, [H|T1]) :-
    membro(H, L2),
    intersecao(T, L2, T1).

intersecao([_|T], L2, LInt) :-
    intersecao(T, L2, LInt).