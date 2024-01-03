inicio() :-
    write('Digite a lista: '),
    read(Lista),
    write('Lista: '), write(Lista), nl, nl,

    tamanho(Tam, Lista),
    write('Tamanho: '), write(Tam), nl, nl,

    maior(Lista, Maior),
    write('Maior: '), write(Maior), nl, nl,

    Maior =:= Tam,
    write('Lista simetrica');
    write('Lista nao simetrica').

tamanho(0, []).
tamanho(Tam, [_|T]) :-
    tamanho(Tam1, T),
    Tam is Tam1 + 1.

maior([X], X). %Se a lista tiver apenas um elemento, esse elemento é o maior
maior([H|T], Maior) :- 
    maior(T, Maior1), %Chama recursivamente a função para a cauda da lista
    (
        H > Maior1, %Se a cabeça da lista for maior que o maior elemento da cauda, a cabeça é o maior elemento
        Maior = H; 
        Maior = Maior1
    ).