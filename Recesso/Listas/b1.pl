pertence(X, [X|_]). %Se o elemento está na cabeça da lista
%Se não estiver na cabeça
pertence(X, [_|C]) :-
    pertence(X, C). 