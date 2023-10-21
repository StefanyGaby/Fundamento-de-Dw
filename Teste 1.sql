create database Faculdade;
use Faculdade;
create table Aluno(
idAluno int auto_increment primary key,
Matricula varchar(10) not null,
Nome varchar(50) not null
);
create table Disciplina(
idDisciplina int auto_increment primary key,
Nome varchar(50) not null,
cargaHoraria int not null
);
create table Curso(
idCurso int auto_increment primary key,
Nome varchar(50) not null
);
create table Historico(
constraint fk_historico_Aluno foreign key (idAluno) references Aluno(idAluno),
constraint fk_historico_Disciplina foreign key (idDisciplina) references Disciplina(idDisciplina),
Nota float not null,
dataHistorico date
);


