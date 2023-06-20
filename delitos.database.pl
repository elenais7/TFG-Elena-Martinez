#include('delitos.pl').
#include('delitos.pred.pl').

acusado(d01). %sexual assault-autor + robbery-tentativa

evidence(d01, acto_de_contenido_sexual).
evidence(d01, violencia_ag).
-evidence(d01, intimidacion_ag).
-evidence(d01, superioridad).
-evidence(d01, vulnerabilidad_victima).
-evidence(d01, privacion_sentido).
-evidence(d01, situacion_mental).
-evidence(d01, anulacion_voluntad).
-evidence(d01, jurisprudencia_confirma).

evidence(d01, apoderacion_cosa).
evidence(d01, violencia_rob).
-evidence(d01, intimidacion_rob).
evidence(d01, comision).
-evidence(d01, huida).

-evidence(d01, asistencia_facultativa).
-evidence(d01, menoscabo_fisico).
-evidence(d01, menoscabo_mental).
-evidence(d01, asistencia_facultativa).
-evidence(d01, tratamiento_medico).
-evidence(d01, tratamiento_quirurgico).

evidence(d01, autor_ag).
-evidence(d01, complice_ag).
-evidence(d01, tentativa_ag).
-evidence(d01, autor_rob).
evidence(d01, complice_rob).
-evidence(d01, tentativa_rob).
-evidence(d01, autor_les).
-evidence(d01, complice_les).
-evidence(d01, tentativa_les).


acusado(d02). %robbery-tentativa + assault and battery-complice

evidence(d01, acto_de_contenido_sexual).
-evidence(d02, violencia_ag).
-evidence(d02, intimidacion_ag).
-evidence(d02, superioridad).
-evidence(d02, vulnerabilidad_victima).
-evidence(d02, privacion_sentido).
-evidence(d02, situacion_mental).
-evidence(d02, anulacion_voluntad).
evidence(d02, jurisprudencia_confirma).

evidence(d02, apoderacion_cosa).
-evidence(d02, violencia_rob).
evidence(d02, intimidacion_rob).
evidence(d02, comision).
-evidence(d02, huida).

-evidence(d02, menoscabo_fisico).
evidence(d02, menoscabo_mental).
evidence(d02, asistencia_facultativa).
evidence(d02, tratamiento_medico).
-evidence(d02, tratamiento_quirurgico).

-evidence(d02, autor_ag).
-evidence(d02, complice_ag).
-evidence(d02, tentativa_ag).
-evidence(d02, autor_rob).
-evidence(d02, complice_rob).
evidence(d02, tentativa_rob).
-evidence(d02, autor_les).
evidence(d02, complice_les).
-evidence(d02, tentativa_les).


?- delito(D, Delitos).
