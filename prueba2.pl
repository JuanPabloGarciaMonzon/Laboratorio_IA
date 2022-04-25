% clientes
cliente(1,jose,morales,guatemala,27,soltero).
cliente(2,fabrizio,sartini,italia,25,casado).
cliente(3,gustavo,molina,holanda,15,soltero).
cliente(4,maria,gutierrez,guatemala,20,soltero).
cliente(5,cornelio,bustamante,guatemala,18,soltero).
cliente(6,loraine,cortez,'española',34,divorciado).
cliente(7,paco,estanley,guatemala,30,soltero).
cliente(8,daniela,samayoa,guatemala,21,casado).
cliente(9,silvia,santis,el_salvador,50,casado).
cliente(10,luis,ortega,el_salvador,35,soltero).
cliente(11,tatiana,lopez,el_salvador,28,soltero).
cliente(12,ronny,paiz,honduras,20,soltero).
cliente(13,cesar,ortiz,guatemala,36,soltero).
cliente(14,margot,claus,usa,32,soltero).
cliente(15,jorge,calderon,venezuela,26,casado).
cliente(17,maira,martinez,mexico,25,soltero).
cliente(18,jazmin,dolores,venezuela,27,casado).
cliente(19,mauro,hernandez,'español',22,soltero).
cliente(20,luis,sagastume,costa_rica,20,soltero).
cliente(21,rcharson,patric,inglaterra,30,casado).
cliente(22,montheri,lois,inglaterra,32,casado).
cliente(23,silverio,perez,mexico,33,casado).
cliente(24,monica,suarez,mexico,30,casado).

% departamentos
departamento(1,peten,8,'español',tropical).
departamento(2,izabal,5,'español',calor).
departamento(3,alta_verapaz,6,'español',frio).
departamento(4,quiche,5,katchikel,frio).
departamento(5,huehuetenango,7,'español',frio).
departamento(6,escuintla,2,'español',calor).
departamento(7,san_marcos,3,ingles,calor).
departamento(8,jutiapa,4,katchikel,calor).
departamento(9,baja_verapaz,5,ingles,templado).
departamento(10,santa_rosa,4,ingles,calor).
departamento(11,zacapa,3,ingles,calor).
departamento(12,suchitepequez,5,'español',templado).
departamento(13,chiquimula,4,katchikel,calor).
departamento(14,guatemala,0,ingles,templado).
departamento(15,jalapa,4,ingles,calor).
departamento(16,chimaltenango,3,katchikel,calor).
departamento(17,quetzaltenango,3,ingles,frio).
departamento(18,el_progreso,4,katchikel,calor).
departamento(19,retalhuleu,4,ingles,calor).
departamento(20,solola,6,ketchi,frio).
departamento(21,totonicapan,5,ingles,templado).
departamento(22,sacatepequez,2,'español',templado).

% inicio.
inicio:-nl,
    write('ingrese un clima'),
    nl,
    read(OPCION),
    nl,
    analisis_opcion(OPCION),
    nl.

analisis_opcion(X):- 
write('HOTELES CON CLIMA: '),
nl,
departamento(Id,Nombre,TiempoR,_,X),
TiempoR>=4,
write(X),
write(Nombre),
write(TiempoR),
nl,
fail.
