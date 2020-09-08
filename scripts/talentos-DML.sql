USE Talentos;
GO

INSERT INTO TipoUsuario(TituloTipoUsuario)
VALUES ('Administrador'),
	   ('Aluno'),
	   ('Empresa'),
	   ('Ex-aluno')
GO
SELECT * FROM TipoUsuario;

INSERT INTO Endereco(Cep, Logradouro, Bairro, Numero, Localidade, Complemento)
VALUES ('15810400', 'Rua Estados Unidos', 'Jardim Monte Líbano', '78', 'Catanduva', 'Bloco AB'),
	   ('14079038', 'Rua Moreira da Silva', 'Residencial Léo Gomes de Moraes', '12', 'Ribeirão Preto', 'Rua sem saida'),
	   ('12214000', 'Avenida Pico das Agulhas Negras', 'Jardim Altos de Santana', '100', 'São José dos Campos', 'Em frete a praça')
GO
SELECT * FROM Endereco;


INSERT INTO Aluno(Nome, Email, Senha, NomeSocial , RG, CPF, DataNascimento, Genero, CursoSENAI, DataFormacao, Telefone, TipoDefiencia, DetalheDeficiencia, PreferenciaArea, Descricao, Linkedin, GitHub, NomeFoto, PerfilComportamental, IdTipoUsuario, IdEndereco)
VALUES ('Carlos Morette', 's@email.com', '123', 'mm' ,'395030142', '31670047094', '2002-07-14', 'Masculino', 'Desenvolvimento de Sistemas', '2019-12-12', '11947897845', 'aleijado', 'detalhe deficiencia', 'Backend', 'Organizado atencioso e varias qualidades boas', 'httlinkedin.com', 'httgithub.com', 'carlos_morette.png', 'Tubarao', 4, 2),
	   ('Erica Sobral', 'erica@email.com', '123', 'mm' ,'395330142', '31675047094', '2002-07-14', 'Feminino', 'Desenvolvimento de Sistemas', '2019-12-12', '11947897845', 'aleijado', 'detalhe deficiencia', 'Backend', 'Organizada atenciosa e varias qualidades boas', 'httlinkedin.com', 'httgithub.com', 'erica.png', 'Tubarao', 4, 2)
GO
SELECT * FROM Aluno

INSERT INTO Idioma(Nivel, Idioma, IdAluno)
VALUES ('Intermediario', 'Ingles', 2),
	   ('Avançado', 'Espanhol', 2),
	   ('Iniciante', 'Italiano', 2)
GO
SELECT * FROM Idioma

INSERT INTO Administrador(Nome, Email, Senha, CPF, IdTipoUsuario)
VALUES ('Roberto Possarle',	'popo@gmail.com', 'popo123', '16503805004', 1),
	   ('Sara Goes', 'sarinha@gmail.com', 'sarinha123', '77358190050', 1)
GO
SELECT * FROM Administrador

INSERT INTO Empresa(RazaoSocial, Email, Senha, CNPJ, AtividadeEconomica, Telefone, TelefoneDois, NomeFoto, DescricaoEmpresa, IdTipoUsuario)
VALUES ('Dolinho Amigo', 'dolinho@email.com', 'dolinho123', '76187168000110', 'Vende refrigerante',	'1143634532', '1178586965', 'dolinho.jpg', 'Empressa que vende refrigerante', 3),
	   ('Mochilex',	'mochilex@email.com', 'mochilex123', '36487498000106', 'Vende mochila',	'1145788956', '1178586965',	'mochilex123', 'Empresa que vende mochila',	3)
GO
SELECT * FROM Empresa

INSERT INTO VagaEmprego(Titulo, Nivel, Cidade, DescricaoVaga, Habilidade, RemuneracaoBeneficio, IdEmpresa, TipoContrato)
VALUES ('Desenvolvedor Python Sao Paulo', 'Junior', 'São Paulo', 'Lorem ipsum etiam vehicula dui a donec eget dictumst vestibulum, eros aliquam lacinia ut varius con',	'Mestre muito bom zika', '5.000,00', 1,	'PJ'),
	   ('Desenvolvedor Python Sao Paulo', 'Junior', 'São Paulo', 'Lorem ipsum etiam vehicula dui a donec eget dictumst vestibulum, eros aliquam lacinia ut varius con',	'Mestre muito bom zika', '5.000,00', 2,	'PJ'),
	   ('Desenvolvedor Python Sao Paulo', 'Junior', 'São Paulo', 'Lorem ipsum etiam vehicula dui a donec eget dictumst vestibulum, eros aliquam lacinia ut varius con',	'Mestre muito bom zika', '5.000,00', 2,	'PJ')
GO
SELECT * FROM VagaEmprego

INSERT INTO InscricaoEmprego(DataInscricao, IdAluno, IdVagaEmprego)
VALUES ('2020-09-08', 1, 3),
	   ('2020-7-21', 2, 2),
	   ('2020-7-1', 2, 3)
GO
SELECT * FROM InscricaoEmprego

INSERT INTO Estagio(Responsavel, Inicio, Termino, StatusContrato, Documentos, IdAluno, IdEmpresa)
VALUES ('Jurandir ALberto',	'2020-07-09', '2022-01-01',	'Em andamento', 1,	1,	2),
	   ('Jurandir ALberto',	'2020-07-09', '2022-01-01',	'Em andamento', 0,	1,	2)
GO
SELECT * FROM Estagio

INSERT INTO ExperienciaProfissional(Empresa, Cargo, DataInico, DataFim, Descricao, IdAluno)
VALUES ('ISRINGHAUSEN',	'Jovem Aprendiz', '2019-08-12',	'2020-03-04', 'Lorem ipsum etiam vehicula dui a donec eget dictumst vestibulum, eros aliquam lacinia ut varius con', 1),
	   ('Linx',	'Desenvolvedor Junior',	'2020-09-08', '2020-03-27', 'Lorem ipsum etiam vehicula dui a donec eget dictumst vestibulum, eros aliquam lacinia ut varius con',	3)
GO
SELECT * FROM ExperienciaProfissional

INSERT INTO FormacaoAcademica(NomeCurso, Instituicao, TipoCurso, InicioCurso, TerminoCurso, IdAluno)
VALUES ('JavaScript Moderno', 'Udemy', 'Curso Livre', '2020-08-29',	'2020-09-18', 2),
	   ('PHP 7', 'Udemy', 'Anhanguera',	'2020-08-29', '2020-08-18', 2)
SELECT * FROM FormacaoAcademica