casoespecialde(quadrado, retangulo).
casoespecialde(circulo, elipse).

forma(retangulo, Largura, Altura).

forma(quadrado, Lado) :- 
    forma(retangulo, Lado, Lado).

forma(elipse, RaioMaior, RaioMenor).

forma(circulo, Raio) :- 
    forma(elipse, Raio, Raio).

area(retangulo, Largura, Altura, Area) :- 
    Area is Largura * Altura.

area(elipse, RaioMaior, RaioMenor, Area) :- 
    Area is pi * RaioMaior * RaioMenor.
