doa(amais, abmais).
doa(amais, amais).

doa(amenos, amais).
doa(amenos, amenos).
doa(amenos, abmais).
doa(amenos, abmenos).

doa(bmais, bmais).
doa(bmais, abmais).

doa(bmenos, bmais).
doa(bmenos, bmenos).
doa(bmenos, abmais).
doa(bmenos, abmenos).

doa(abmais, abmais).

doa(abmenos, abmais).
doa(abmenos, abmenos).

doa(omais, amais).
doa(omais, bmais).
doa(omais, omais).
doa(omais, abmais).

doa(omenos, amais).
doa(omenos, amenos).
doa(omenos, bmais).
doa(omenos, bmenos).
doa(omenos, abmais).
doa(omenos, abmenos).
doa(omenos, omais).
doa(omenos, omenos).

recebe(X, Y) :-
    doa(Y, X).