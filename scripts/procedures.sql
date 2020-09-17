CREATE PROCEDURE FiltroVagaEmprego 
@Parametro VARCHAR(200)
AS
SET @PARAMETRO = '%'+@Parametro+'%';
SELECT * FROM VagaEmprego INNER JOIN Empresa ON VagaEmprego.IdEmpresa = Empresa.IdEmpresa WHERE Titulo LIKE @Parametro
UNION ALL
SELECT * FROM VagaEmprego INNER JOIN Empresa ON VagaEmprego.IdEmpresa = Empresa.IdEmpresa WHERE DescricaoEmpresa LIKE @Parametro
UNION ALL
SELECT * FROM VagaEmprego INNER JOIN Empresa ON VagaEmprego.IdEmpresa = Empresa.IdEmpresa WHERE Nivel LIKE @Parametro
UNION ALL
SELECT * FROM VagaEmprego INNER JOIN Empresa ON VagaEmprego.IdEmpresa = Empresa.IdEmpresa WHERE RazaoSocial LIKE @Parametro;
