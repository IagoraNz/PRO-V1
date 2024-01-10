remove(X, [X|C], C). %Removendo o elemento X da lista, que é a cabeça da lista, e retornando a cauda da lista
remove(X,[Y|C], [Y|D]) :- %Removendo o elemento X da lista, que não é a cabeça da lista
    remove(X, C, D). %Chamando recursivamente a função remove, passando a cauda da lista e a lista D

%E na consulta:
