
insert into db_lojaVino.Regiao(codRegiao,nomeRegiao) values
	(55,"Brasil"),
    (88,"Chile"),
    (22,"Argentina"),
    (77,"Portugal"),
    (99,"Espanha");

insert into db_lojaVino.Vinho(codVinho,nomeVinho,tipoVinho,anoVinho,codVinicola) values
	(1111, "Concha y toro","Carbenet Sauvignon",2013,100),
    (2222, "La Rosa","Carbenet Sauvignon",2019,200),
    (3333, "El toro","Carbenet Sauvignon",2013,300),
    (4444, "Concha y toro","Carbenet Sauvignon",2020,400),
	(5555, "La Pasaje","Carbenet Sauvignon",2009,200);

insert into db_lojaVino.Vinicola(codVinicola,nomeVinicola,codRegiao) values
	(100,"Vinicola Azul",88),
    (200,"Vinicola Roja",22),
    (300,"Vinicola Verde",77),
    (400,"Vinicola Rosa",55);


