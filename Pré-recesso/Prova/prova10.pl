localizadoem(salvador, bahia).
localizadoem(bahia, brasil).
localizadoem(brasil, america).
localizadoem(maceio, brasil).
localizadoem(roma, italia).

nasceuem(joao, salvador).
nasceuem(maria, maceio).
nasceuem(giuseppe, roma).

localizado(X, Y) :- 
    localizadoem(X, Y).
localizado(X, Y) :- 
    localizadoem(X, Z), 
    localizado(Z, Y).

nasceu(X, Y) :- 
    nasceuem(X, Y).
nasceu(X, Y) :- 
    nasceuem(X, Z), 
    localizado(Z, Y).
