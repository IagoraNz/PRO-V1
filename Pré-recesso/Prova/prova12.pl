capital(teresina, piaui).
capital(sao_luis, maranhao).
capital(fortaleza, ceara).
capital(natal, rio_grande_do_norte).
capital(joao_pessoa, paraiba).
capital(recife, pernambuco).
capital(maceio, alagoas).
capital(aracaju, sergipe).
capital(salvador, bahia).
capital(vitoria, espirito_santo).
capital(rio_de_janeiro, rio_de_janeiro).
capital(belo_horizonte, minas_gerais).
capital(sao_paulo, sao_paulo).
capital(curitiba, parana).
capital(florianopolis, santa_catarina).
capital(porto_alegre, rio_grande_do_sul).
capital(campo_grande, mato_grosso_do_sul).
capital(cuiaba, mato_grosso).
capital(goiania, goias).
capital(brasilia, distrito_federal).
capital(rio_branco, acre).
capital(porto_velho, rondonia).
capital(boa_vista, roraima).
capital(manaus, amazonas).
capital(macapa, amapa).
capital(belem, para).
capital(palmas, tocantins).

estado(acre, norte).
estado(alagoas, nordeste).
estado(amapa, norte).
estado(amazonas, norte).
estado(bahia, nordeste).
estado(ceara, nordeste).
estado(distrito_federal, centro_oeste).
estado(espirito_santo, sudeste).
estado(goias, centro_oeste).
estado(maranhao, nordeste).
estado(mato_grosso, centro_oeste).
estado(mato_grosso_do_sul, centro_oeste).
estado(minas_gerais, sudeste).
estado(para, norte).
estado(paraiba, nordeste).
estado(parana, sul).
estado(pernambuco, nordeste).
estado(piaui, nordeste).
estado(rio_de_janeiro, sudeste).
estado(rio_grande_do_norte, nordeste).
estado(rio_grande_do_sul, sul).
estado(rondonia, norte).
estado(roraima, norte).
estado(santa_catarina, sul).
estado(sao_paulo, sudeste).
estado(sergipe, nordeste).
estado(tocantins, norte).


listarcapitais() :-
    write('Digite a regiao: '),
    read(Regiao),
    estado(Estado, Regiao),
    capital(Capital, Estado),
    write(Capital), nl,
    fail.