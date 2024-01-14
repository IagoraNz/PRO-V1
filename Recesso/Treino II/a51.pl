mamifero(leao).
mamifero(elefante).
carnivoro(leao).
herbivoro(elefante).
carnivoro(cobra).

predador(X) :-
    mamifero(X),
    carnivoro(X).