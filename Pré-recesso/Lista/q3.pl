:- op(500, xfx, '::').

concatenate(String1, String2, Result) :-
    atom_concat(String1, String2, Result).