%1.1
%Código em prolog que pede ao usuária informar em qual capita nasceu, 
%o programa deve informar o gentílico do estado. A região é o Sul

capitalde(floripa, santacatarina).
capitalde(portoalegre, rgs).
capitalde(curitiba, parana).

cidade() :-
    write('Digite a capital de nascimento: '),
    read(X),
    (
        capitalde(X, santacatarina),
        write('Catarinense'); %Se não for (ou)

        capitalde(X, rgs),
        write('Gaucho'); %Ou

        capitalde(X, parana),
        write('Paranaense')
    ).