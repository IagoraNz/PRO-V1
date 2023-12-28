somalista([], 0). %Explicita o caso base, quando a lista é vazia, a soma é 0
somalista([Cabeca|Cauda], Soma) :- %Caso recursivo, a lista não é vazia, então a soma é a cabeça da lista + a soma da cauda da lista
    somalista(Cauda, SomaCauda), %Chama recursivamente a função somalista, passando a cauda da lista e a soma da cauda da lista
    Soma is Cabeca + SomaCauda. %Soma a cabeça da lista com a soma da cauda da lista e atribui o resultado a variável Soma