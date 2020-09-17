CREATE PROCEDURE FiltroVagaDeEmprego @Nome VARCHAR(200)	
AS
SET @Nome = '%'+@Nome+'%';
SELECT * FROM VagaEmprego WHERE Titulo LIKE @Nome;

EXEC FiltroVagaDeEmprego '';

CREATE PROCEDURE Buscar 
@Parametro VARCHAR(200)
AS
SET @PARAMETRO = '%'+@Parametro+'%';
SELECT Nome, NomeVaga, Descricao FROM Vagas INNER JOIN Empresa ON Vagas.IdEmpresa = Empresa.IdEmpresa WHERE NomeVaga LIKE @Parametro
UNION ALL
SELECT Nome, NomeVaga, Descricao FROM Vagas INNER JOIN Empresa ON Vagas.IdEmpresa = Empresa.IdEmpresa WHERE Descricao LIKE @Parametro
UNION ALL
SELECT Nome, NomeVaga, Descricao FROM Vagas INNER JOIN Empresa ON Vagas.IdEmpresa = Empresa.IdEmpresa WHERE Nome LIKE @Parametro;
