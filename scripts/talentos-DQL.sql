USE Talentos;

SELECT * FROM TipoUsuario;
SELECT * FROM Endereco;
SELECT * FROM Administrador;
SELECT * FROM Empresa;
SELECT *,
	CASE
		WHEN IdTipoUsuario = 2 THEN 'Aluno'
		WHEN IdTipoUsuario = 4 THEN 'Ex-Aluno'
		ELSE 'Tipo de Usuario desconhecido'
END AS TipoAluno
FROM Aluno;

SELECT * FROM Idioma
SELECT * FROM VagaEmprego
SELECT * FROM Estagio
SELECT * FROM InscricaoEmprego
SELECT * FROM ExperienciaProfissional
SELECT * FROM FormacaoAcademica
