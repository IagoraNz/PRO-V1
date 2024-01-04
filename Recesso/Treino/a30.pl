caro(carro).
caro(casa).
caro(aviao).
caro(ouro).

barato(arroz).
barato(fosforo).
barato(feijao).
barato(copo).
barato(cadeira).

main() :-
    write('Digite um elemento do estoque: '),
    read(Est),

    (
        caro(Est),
        write('Produto da classe caro!'), nl
    );
    (
        barato(Est),
        write('Produto da classe barato!'), nl
    ).