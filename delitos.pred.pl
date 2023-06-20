# show agresion/2, acto_de_contenido_sexual/1, requisito/1, violencia_ag/1, intimidacion_ag/1, abuso_situacion/1, superioridad/1, vulnerabilidad_victima/1, condicion_especifica_victima/1, privacion_sentido/1, situacion_mental/1, anulacion_voluntad/1, not consentimiento/1.
 
# show robo/2, apoderacion_cosa/1, uso_fuerza/1, acceder/1, abandonar_lugar/1, objeto/1, violencia_rob/1, intimidacion_rob/1, comision/1, huida/1.

# show lesion/2, menoscabo_fisico/1, menoscabo_mental/1, requisito_lesion/1, asistencia_facultativa/1, tratamiento_medico/1, tratamiento_quirurgico/1.


#pred agresion(X, Y) :: '@(X) has been accused of sexual assault'.
    #pred acto_de_contenido_sexual(X) :: '@(X) has committed an act of sexual nature'.
        #pred requisito(X) :: 'a requirement is met'.
            #pred violencia_ag(X) :: 'the sexual act has been committed with the use of violence'.
            #pred intimidacion_ag(X) :: 'the sexual act has been committed with the use of intimidation'.
            #pred abuso_situacion(X) :: 'the sexual act has been committed taking advantage of the situation'.
                #pred superioridad(X) :: '@(X) held a position of superiority'.
                #pred vulnerabilidad_victima(X) :: 'the victim was in a vulnerable position'.
            #pred condicion_especifica_victima(X) :: 'the victim had a specific condiction'.
                #pred privacion_sentido(X) :: ' they were unable to act independently'.
                #pred situacion_mental(X) :: 'their mental situation was abused'.
                #pred anulacion_voluntad(X) :: 'their will was overridden'.
    #pred consentimiento(X) :: 'it happened with the victim´s consent'.
   

#pred robo(X,Y) :: '@(X) has been accused of robbery'.
    #pred apoderacion_cosa(X) :: '@(X) has taken possession of a movable thing from another person'.
    #pred requisito_robo(X) :: 'a requirement in @(X) robbery is met'.
         #pred objeto(X) :: 'the condition "objeto" holds'.
             #pred violencia_rob(X) :: '@(X) took it with the use of violence'.
             #pred intimidacion_rob(X) :: '@(X) took it with the use of intimidation'.
         #pred momento(X) :: 'and the condition "momento" holds'.
             #pred comision(X) :: 'they used it when taking the thing'.
             #pred huida(X) :: 'they used it to secure the escape from the crime scene'.

#pred lesion(X, Y) :: '@(X) has been accused of assault'.
    #pred menoscabo_fisico(X) :: '@(X) has caused a physical damage'.
    #pred menoscabo_mental(X) :: '@(X) has caused a mental damage'.
    #pred requisito_lesion(X) :: 'a requirement is met in @(X) victim´s recovery'.
        #pred asistencia_facultativa(X) :: 'the victim of @(X) has needed a first medical care'.
        #pred tratamiento_medico(X) :: 'the victim of @(X) has also needed medical treatment'.
        #pred tratamiento_quirurgico(X) :: 'the victim of @(X) has also needed a surgical procedure'.


 
#pred penaTotal(Delitos, [MinA, MinM, MinD], [MaxA, MaxM, MaxD]) :: 'The final sentence will range from @(MinA) years, @(MinM) months and @(MinD) days to @(MaxA) years, @(MaxM) months and @(MaxD) days in prison'.