agresion(D,autor):-
    autor_ag(D),
    agresion_rec(D).
agresion(D,complice):-
    complice_ag(D),
    agresion_rec(D).
agresion(D,tentativa):-
    tentativa_ag(D),
    agresion_rec(D).

agresion_rec(D):-
    acto_de_contenido_sexual(D),
    requisito_agresion(D).

requisito_agresion(D):-
    violencia_ag(D).
requisito_agresion(D):-
    intimidacion_ag(D).

requisito_agresion(D):-
    abuso_situacion(D).
abuso_situacion(D):-
    superioridad(D).
abuso_situacion(D):-
    vulnerabilidad_victima(D).

requisito_agresion(D):-
    condicion_especifica_victima(D).
condicion_especifica_victima(D):-
    privacion_sentido(D).
condicion_especifica_victima(D):-
    situacion_mental(D).
condicion_especifica_victima(D):-
    anulacion_voluntad(D).

agresion_rec(D) :-
    acto_de_contenido_sexual(D),
    not consentimiento(D).


robo(D, autor):-
    autor_rob(D),
    apoderacion_cosa(D), 
    requisito_robo(D).
robo(D, complice):-
    complice_rob(D),
    apoderacion_cosa(D), 
    requisito_robo(D).
robo(D, tentativa):-
    tentativa_rob(D),
    apoderacion_cosa(D), 
    requisito_robo(D).

requisito_robo(D):-
    objeto(D),
    momento(D).
objeto(D):-
    violencia_rob(D).
objeto(D):-
    intimidacion_rob(D).
momento(D):-
    comision(D).
momento(D):-
    huida(D).



lesion(D, autor):-
    autor_les(D),
    lesion_sec(D).
lesion(D, complice):-
    complice_les(D),
    lesion_sec(D).
lesion(D, tentativa):-
    tentativa_les(D),
    lesion_sec(D).

lesion_sec(D):-
    menoscabo_fisico(D),
    requisito_lesion(D).
lesion_sec(D):-
    menoscabo_mental(D),
    requisito_lesion(D).

requisito_lesion(D):-
    asistencia_facultativa(D),
    tratamiento_medico(D).
requisito_lesion(D):-
    asistencia_facultativa(D),
    tratamiento_quirurgico(D).



%%Evidence definition

autor_ag(D):- evidence(D, autor_ag).
n_autor_ag(D):- -evidence(D, autor_ag).
autor_ag(D):- not evidence(D, autor_ag), not -evidence(D, autor_ag), not n_autor_ag(D).
n_autor_ag(D):- not autor_ag(D).

autor_rob(D):- evidence(D, autor_rob).
n_autor_rob(D):- -evidence(D, autor_rob).
autor_rob(D):- not evidence(D, autor_rob), not -evidence(D, autor_rob), not n_autor_rob(D).
n_autor_rob(D):- not autor_rob(D).

autor_les(D):- evidence(D, autor_les).
n_autor_les(D):- -evidence(D, autor_les).
autor_les(D):- not evidence(D, autor_les), not -evidence(D, autor_les), not n_autor_les(D).
n_autor_les(D):- not autor_les(D).

complice_ag(D):- evidence(D, complice_ag).
n_complice_ag(D):- -evidence(D, complice_ag).
complice_ag(D):- not evidence(D, complice_ag), not -evidence(D, complice_ag), not n_complice_ag(D).
n_complice_ag(D):- not complice_ag(D).

complice_rob(D):- evidence(D, complice_rob).
n_complice_rob(D):- -evidence(D, complice_rob).
complice_rob(D):- not evidence(D, complice_rob), not -evidence(D, complice_rob), not n_complice_rob(D).
n_complice_rob(D):- not complice_rob(D).

complice_les(D):- evidence(D, complice_les).
n_complice_les(D):- -evidence(D, complice_les).
complice_les(D):- not evidence(D, complice_les), not -evidence(D, complice_les), not n_complice_les(D).
n_complice_les(D):- not complice_les(D).

tentativa_ag(D):- evidence(D, tentativa_ag).
n_tentativa_ag(D):- -evidence(D, tentativa_ag).
tentativa_ag(D):- not evidence(D, tentativa_ag), not -evidence(D, tentativa_ag), not n_tentativa_ag(D).
n_tentativa_ag(D):- not tentativa_ag(D).

tentativa_rob(D):- evidence(D, tentativa_rob).
n_tentativa_rob(D):- -evidence(D, tentativa_rob).
tentativa_rob(D):- not evidence(D, tentativa_rob), not -evidence(D, tentativa_rob), not n_tentativa_rob(D).
n_tentativa_rob(D):- not tentativa_rob(D).

tentativa_les(D):- evidence(D, tentativa_les).
n_tentativa_les(D):- -evidence(D, tentativa_les).
tentativa_les(D):- not evidence(D, tentativa_les), not -evidence(D, tentativa_les), not n_tentativa_les(D).
n_tentativa_les(D):- not tentativa_les(D).


acto_de_contenido_sexual(D):- evidence(D, acto_de_contenido_sexual).
n_acto_de_contenido_sexual(D):- -evidence(D, acto_de_contenido_sexual).
acto_de_contenido_sexual(D):- not evidence(D, acto_de_contenido_sexual), not -evidence(D, acto_de_contenido_sexual), not n_acto_de_contenido_sexual(D).
n_acto_de_contenido_sexual(D):- not acto_de_contenido_sexual(D).

violencia_ag(D):- evidence(D, violencia_ag).
n_violencia_ag(D):- -evidence(D, violencia_ag).
violencia_ag(D):- not evidence(D, violencia_ag), not -evidence(D, violencia_ag), not n_violencia_ag(D).
n_violencia_ag(D):- not violencia_ag(D).

intimidacion_ag(D):- evidence(D, intimidacion_ag).
n_intimidacion_ag(D):- -evidence(D, intimidacion_ag).
intimidacion_ag(D):- not evidence(D, intimidacion_ag), not -evidence(D, intimidacion_ag), not n_intimidacion_ag(D).
n_intimidacion_ag(D):- not intimidacion_ag(D).

superioridad(D):- evidence(D, superioridad).
n_superioridad(D):- -evidence(D, superioridad).
superioridad(D):- not evidence(D, superioridad), not -evidence(D, superioridad), not n_superioridad(D).
n_superioridad(D):- not superioridad(D).

vulnerabilidad_victima(D):- evidence(D, vulnerabilidad_victima).
n_vulnerabilidad_victima(D):- -evidence(D, vulnerabilidad_victima).
vulnerabilidad_victima(D):- not evidence(D, vulnerabilidad_victima), not -evidence(D, vulnerabilidad_victima), not n_vulnerabilidad_victima(D).
n_vulnerabilidad_victima(D):- not vulnerabilidad_victima(D).

privacion_sentido(D):- evidence(D, privacion_sentido).
n_privacion_sentido(D):- -evidence(D, privacion_sentido).
privacion_sentido(D):- not evidence(D, privacion_sentido), not -evidence(D, privacion_sentido), not n_privacion_sentido(D).
n_privacion_sentido(D):- not privacion_sentido(D).

situacion_mental(D):- evidence(D, situacion_mental).
n_situacion_mental(D):- -evidence(D, situacion_mental).
situacion_mental(D):- not evidence(D, situacion_mental), not -evidence(D, situacion_mental), not n_situacion_mental(D).
n_situacion_mental(D):- not situacion_mental(D).

anulacion_voluntad(D):- evidence(D, anulacion_voluntad).
n_anulacion_voluntad(D):- -evidence(D, anulacion_voluntad).
anulacion_voluntad(D):- not evidence(D, anulacion_voluntad), not -evidence(D, anulacion_voluntad), not n_anulacion_voluntad(D).
n_anulacion_voluntad(D):- not anulacion_voluntad(D).

consentimiento(D):- evidence(D, jurisprudencia_confirma).
n_consentimiento(D):- -evidence(D, jurisprudencia_confirma).
consentimiento(D):- not evidence(D, jurisprudencia_confirma), not -evidence(D, jurisprudencia_confirma), not n_consentimiento(D).
n_consentimiento(D):- not consentimiento(D).


apoderacion_cosa(D):- evidence(D, apoderacion_cosa).
n_apoderacion_cosa(D):- -evidence(D, apoderacion_cosa).
apoderacion_cosa(D):- not evidence(D, apoderacion_cosa), not -evidence(D, apoderacion_cosa), not n_apoderacion_cosa(D).
n_apoderacion_cosa(D):- not apoderacion_cosa(D).

violencia_rob(D):- evidence(D, violencia_rob).
n_violencia_rob(D):- -evidence(D, violencia_rob).
violencia_rob(D):- not evidence(D, violencia_rob), not -evidence(D, violencia_rob), not n_violencia_rob(D).
n_violencia_rob(D):- not violencia_rob(D).

intimidacion_rob(D):- evidence(D, intimidacion_rob).
n_intimidacion_rob(D):- -evidence(D, intimidacion_rob).
intimidacion_rob(D):- not evidence(D, intimidacion_rob), not -evidence(D, intimidacion_rob), not n_intimidacion_rob(D).
n_intimidacion_rob(D):- not intimidacion_rob(D).

comision(D):- evidence(D, comision).
n_comision(D):- -evidence(D, comision).
comision(D):- not evidence(D, comision), not -evidence(D, comision), not n_comision(D).
n_comision(D):- not comision(D).

huida(D):- evidence(D, huida).
n_huida(D):- -evidence(D, huida).
huida(D):- not evidence(D, huida), not -evidence(D, huida), not n_huida(D).
n_huida(D):- not huida(D).


menoscabo_fisico(D):- evidence(D, menoscabo_fisico).
n_menoscabo_fisico(D):- -evidence(D, menoscabo_fisico).
menoscabo_fisico(D):- not evidence(D, menoscabo_fisico), not -evidence(D, menoscabo_fisico), not n_menoscabo_fisico(D).
n_menoscabo_fisico(D):- not menoscabo_fisico(D).

menoscabo_mental(D):- evidence(D, menoscabo_mental).
n_menoscabo_mental(D):- -evidence(D, menoscabo_mental).
menoscabo_mental(D):- not evidence(D, menoscabo_mental), not -evidence(D, menoscabo_mental), not n_menoscabo_mental(D).
n_menoscabo_mental(D):-  not menoscabo_mental(D).

asistencia_facultativa(D):- evidence(D, asistencia_facultativa).
n_asistencia_facultativa(D):- -evidence(D, asistencia_facultativa).
asistencia_facultativa(D):- not evidence(D, asistencia_facultativa), not -evidence(D, asistencia_facultativa), not n_asistencia_facultativa(D).
n_asistencia_facultativa(D):- not asistencia_facultativa(D).

tratamiento_medico(D):- evidence(D, tratamiento_medico).
n_tratamiento_medico(D):- -evidence(D, tratamiento_medico).
tratamiento_medico(D):- not evidence(D, tratamiento_medico), not -evidence(D, tratamiento_medico), not n_tratamiento_medico(D).
n_tratamiento_medico(D):- not tratamiento_medico(D).

tratamiento_quirurgico(D):- evidence(D, tratamiento_quirurgico).
n_tratamiento_quirurgico(D):- -evidence(D, tratamiento_quirurgico).
tratamiento_quirurgico(D):- not evidence(D, tratamiento_quirurgico), not -evidence(D, tratamiento_quirurgico), not n_tratamiento_quirurgico(D).
n_tratamiento_quirurgico(D):- not tratamiento_quirurgico(D).


%%Calculation of the sentence

delito(D, [agresion-X, robo-Y, lesion-Z]):- 
    acusado(D), 
    agresion(D,X),   
    robo(D,Y), 
    lesion(D,Z).
delito(D, [agresion-X, robo-Y]):- 
     acusado(D), 
     agresion(D,X), 
     robo(D,Y).
delito(D, [agresion-X, lesion-Y]):- 
    acusado(D), 
    agresion(D,X), 
    lesion(D,Y).
delito(D, [lesion-X, robo-Y]):- 
    acusado(D), 
    lesion(D,X), 
    robo(D,Y).
delito(D, [agresion-X]):- 
    acusado(D), 
    agresion(D,X).
delito(D, [robo-X]):- 
    acusado(D), 
    robo(D,X).
delito(D, [lesion-X]):- 
    acusado(D), 
    lesion(D,X).

pena(agresion, 1, 4).
pena(robo, 2, 5).
pena(lesion, 0.5, 3).

penaTotal([Delito-Grado|Resto], [MinA, MinM, MinD], [MaxA, MaxM, MaxD]):-
     penaTotal_rec([Delito-Grado|Resto], MinProvisional, MaxProvisional),
     maximo(MinProvisional, 0.5, Min),
     minimo(MaxProvisional, 20, Max),
     conversor(Min, MinA, MinM, MinD),
     conversor(Max, MaxA, MaxM, MaxD).

penaTotal_rec([], 0, 0).

penaTotal_rec([DelitoR-GradoR|RestoR], MinimoR, MaximoR):- %concurso real
    pena(DelitoR, MinC, MaxC),
    modifica(GradoR, MinC, MaxC, MinMod, MaxMod),
    penaTotal_rec(RestoR, MinResto, MaxResto),
    MinimoR is MinMod + MinResto,
    MaximoR is MaxMod + MaxResto.
    
modifica(autor, MinC, MaxC, MinC, MaxC). 
modifica(complice, MinC, MaxC, MinMod, MaxMod):-
    inf_enGrado(MinC, MaxC, MinMod, MaxMod).
modifica(tentativa, MinC, MaxC, MinMod, MaxMod):- 
    inf_enGrado(MinC, MaxC, MinTemp, MaxTemp),
    inf_enGrado(MinTemp, MaxTemp, MinMod, MaxMod).    

minimo(M,N,M):- M=<N.
minimo(M,N,N):- N<M.
maximo(M,N,M):- M>=N.
maximo(M,N,N):- N>M.

inf_enGrado(MinIn, MaxIn, MinFi, MinIn):-
    MinFi is MinIn / 2.

conversor(N, A, M, D):-
    A is floor(N),
    Dif is N - A, 
    Meses is Dif * 12, 
    M is floor(Meses),
    Dif2 is Meses - M,
    Dias is Dif2 * 30.416,
    D is round(Dias).


% ?- penaTotal([(agresion,0), (robo,1)], [Ai, Mi, Di], [Af, Mf, Df]).
% ?- delito(Def, Delitos), penaTotal(Delitos, [Ai, Mi, Di], [Af, Mf, Df]).