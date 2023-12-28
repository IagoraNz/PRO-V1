emordem([]). %Lista vazia está ordenada
emordem([_]). %Lista com um elemento qualquer está ordenada
emordem([X, Y | Tail]) :- %Lista com dois ou mais elementos
    X =< Y, %O primeiro elemento é menor ou igual ao segundo
    emordem([Y | Tail]). %O segundo elemento é menor ou igual ao terceiro e assim por diante