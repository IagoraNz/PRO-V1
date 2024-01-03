hit(shapeofyou, edsheeran).
hit(thinkingoutloud, edsheeran).
hit(blindinglights, theweeknd).
hit(uptownfunk, brunomars).
hit(happy, pharellwillians).
hit(loveyourself, justinbieber).
hit(dontstopbelievin, journey).
hit(cheapthrills, sia).
hit(rollinginthedeep, adele).

artistascomhits() :-
    hit(X, Y),
    hit(Z, Y),
    X \= Z,
    write(Y), nl,
    fail.