CREATE TABLE aluno (
  matricula INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  responsavel_codigo INTEGER UNSIGNED NOT NULL,
  nome VARCHAR(250) NULL,
  fone VARCHAR(50) NULL,
  cod_responsavel INTEGER UNSIGNED NULL,
  cod_serie INTEGER UNSIGNED NULL,
  cod_turno INTEGER UNSIGNED NULL,
  cod_turma INTEGER UNSIGNED NULL,
  data_nasc DATE NULL,
  PRIMARY KEY(matricula),
  INDEX aluno_FKIndex1(responsavel_codigo)
);

CREATE TABLE diario (
  codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  turma_codigo INTEGER UNSIGNED NOT NULL,
  turno_codigo INTEGER UNSIGNED NOT NULL,
  professor_codigo INTEGER UNSIGNED NOT NULL,
  disciplina_codigo INTEGER UNSIGNED NOT NULL,
  cod_serie INTEGER UNSIGNED NULL,
  cod_turma INTEGER UNSIGNED NULL,
  cod_turno INTEGER UNSIGNED NULL,
  ano_corrente INTEGER UNSIGNED NULL,
  cod_disciplina INTEGER UNSIGNED NULL,
  cod_professor INTEGER UNSIGNED NULL,
  PRIMARY KEY(codigo),
  INDEX diario_FKIndex1(disciplina_codigo),
  INDEX diario_FKIndex2(professor_codigo),
  INDEX diario_FKIndex3(turno_codigo),
  INDEX diario_FKIndex4(turma_codigo)
);

CREATE TABLE disciplina (
  codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(100) NULL,
  ementa TEXT NULL,
  observacao TEXT NULL,
  carga_horaria INTEGER UNSIGNED NULL,
  PRIMARY KEY(codigo)
);

CREATE TABLE movimentacao_diario (
  codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  aluno_matricula INTEGER UNSIGNED NOT NULL,
  diario_codigo INTEGER UNSIGNED NOT NULL,
  cod_diario INTEGER UNSIGNED NULL,
  matricula INTEGER UNSIGNED NULL,
  situacao INTEGER UNSIGNED NULL,
  observacao TEXT NULL,
  PRIMARY KEY(codigo),
  INDEX movimentacao_diario_FKIndex1(diario_codigo),
  INDEX movimentacao_diario_FKIndex2(aluno_matricula)
);

CREATE TABLE professor (
  codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(250) NULL,
  email VARCHAR(100) NULL,
  fone VARCHAR(100) NULL,
  PRIMARY KEY(codigo)
);

CREATE TABLE responsavel (
  codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(250) NULL,
  cpf VARCHAR(30) NULL,
  fone VARCHAR(50) NULL,
  email VARCHAR(100) NULL,
  PRIMARY KEY(codigo)
);

CREATE TABLE turma (
  codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(100) NULL,
  PRIMARY KEY(codigo)
);

CREATE TABLE turno (
  codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(100) NULL,
  PRIMARY KEY(codigo)
);


