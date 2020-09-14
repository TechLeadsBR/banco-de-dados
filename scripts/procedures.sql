CREATE PROCEDURE FiltroVagaDeEmprego @Nome VARCHAR(200)	
AS
SET @Nome = '%'+@Nome+'%';
SELECT * FROM VagaEmprego WHERE Titulo LIKE @Nome;

EXEC FiltroVagaDeEmprego '';