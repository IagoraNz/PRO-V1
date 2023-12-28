membro(X, [X|C]). %X é membro de uma lista se X é a cabeça da lista
membro(X, [Y|C]) :- %X é membro de uma lista se X é membro da cauda da lista
    membro(X, C).