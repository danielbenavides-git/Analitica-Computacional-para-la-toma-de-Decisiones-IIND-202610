create table estudiante
  (nombres varchar (20) not null,
  apellidos varchar (20) not null,
  id int,
  primary key (id)
  );
  
 create table curso
  (curso_cod varchar (7),
  nombre varchar (50),
  nombre_unid varchar (20),
  creditos int,
  primary key (curso_cod)
 );
 
 create table estCursos
  (estID int,
  curso_cod varchar (7),
  nota numeric(2,1),
  primary key (estID, curso_cod)
 );
 
insert into curso values('000', 'prob_est1', 'IIND', 3 );
insert into curso values('001', 'optimizacion', 'IIND', 3 );
insert into curso values('002', 'anadec', 'MACC', 3 );
insert into curso values('100', 'micro1', 'ECON', 3 );
insert into curso values('101', 'micro2', 'ECON', 3 );
insert into curso values('101', 'micro3', 'ECON', 3 );

insert into estudiante values('Juan', 'Perez', 8888);
insert into estudiante values('Ana', 'Gutierrez', 5555);
insert into estudiante values('Ernesto', 'Huertas', 2222);

insert into estCursos values(8888, '000', 4.2);
insert into estCursos values(5555, '000', 3.6);
insert into estCursos values(5555, '001', 4.8);
insert into estCursos values(3333, '001', 3.3);
insert into estCursos values(3333, '002', 3.3);
