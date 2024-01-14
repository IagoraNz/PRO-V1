invertebrado(pulga).
invertebrado(lagarta).
invertebrado(sanguessuga).
invertebrado(minhoca).

vertebrado(aguia).
vertebrado(pomba).
vertebrado(homem).
vertebrado(vaca).

ave(aguia).
ave(pomba).

inseto(pulsa).
inseto(lagarta).

anelideo(sanguessuga).
anelideo(minhoca).

mamifero(homem).
mamifero(vaca).

carnivoro(aguia).

onivoro(pomba).
onivoro(homem).
onivoro(minhoca).

herbivoro(vaca).
herbivoro(lagarta).

hematofago(pulga).
hematofago(sanguessuga).

main :-
    (
        vertebrado(X),
        (
            (ave(X), (carnivoro(X) ; onivoro(X)), write(X), nl, fail);
            (mamifero(X), (onivoro(X) ; herbivoro(X)), write(X), nl, fail)
        )
    );
    (
        invertebrado(X),
        (
            (inseto(X), (hematofago(X) ; herbivoro(X)), write(X), nl, fail);
            (anelideo(X), (hematofago(X) ; onivoro(X)), write(X), nl, fail)
        )
    ).