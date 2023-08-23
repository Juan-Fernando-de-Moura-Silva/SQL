SELECT: Usado para recuperar dados de um banco de dados.

SELECT coluna1, coluna2 FROM nome_tabela WHERE condição;
INSERT INTO: Usado para inserir novas linhas de dados em uma tabela.

INSERT INTO nome_tabela (coluna1, coluna2) VALUES (valor1, valor2);
UPDATE: Usado para modificar dados existentes em uma tabela.

UPDATE nome_tabela SET coluna1 = valor1, coluna2 = valor2 WHERE condição;
DELETE FROM: Usado para deletar linhas de uma tabela.

DELETE FROM nome_tabela WHERE condição;
CREATE TABLE: Usado para criar uma nova tabela com colunas especificadas.

CREATE TABLE nome_tabela (
    coluna1 tipo_de_dado,
    coluna2 tipo_de_dado,
    ...
);
ALTER TABLE: Usado para modificar uma tabela existente.

ALTER TABLE nome_tabela ADD nome_coluna tipo_de_dado;
ALTER TABLE nome_tabela MODIFY nome_coluna novo_tipo_de_dado;
ALTER TABLE nome_tabela DROP nome_coluna;
DROP TABLE: Usado para deletar uma tabela existente do banco de dados.

DROP TABLE nome_tabela;
CREATE DATABASE: Usado para criar um novo banco de dados.

CREATE DATABASE nome_banco_de_dados;
USE: Usado para selecionar um banco de dados específico para trabalhar.

USE nome_banco_de_dados;
GRANT: Usado para conceder privilégios específicos a usuários ou funções.

GRANT tipo_de_privilégio ON tipo_de_objeto TO usuário;
REVOKE: Usado para remover privilégios específicos de usuários ou funções.

REVOKE tipo_de_privilégio ON tipo_de_objeto FROM usuário;
JOIN: Usado para combinar linhas de duas ou mais tabelas com base em uma coluna relacionada.

SELECT nome_coluna(s) FROM tabela1 JOIN tabela2 ON tabela1.coluna = tabela2.coluna;
ORDER BY: Usado para ordenar os resultados em ordem crescente ou decrescente.

SELECT coluna1, coluna2 FROM nome_tabela ORDER BY coluna1 ASC;
SELECT coluna1, coluna2 FROM nome_tabela ORDER BY coluna1 DESC;
GROUP BY: Usado para agrupar os resultados com base em uma coluna.

SELECT coluna1, COUNT(*) FROM nome_tabela GROUP BY coluna1;
HAVING: Usado para filtrar os resultados após o uso do GROUP BY.

SELECT coluna1, COUNT(*) FROM nome_tabela GROUP BY coluna1 HAVING COUNT(*) > 2;
LIMIT: Usado para limitar o número de resultados retornados.

SELECT coluna1, coluna2 FROM nome_tabela LIMIT 10;
OFFSET: Usado em conjunto com LIMIT para paginar resultados.

SELECT coluna1, coluna2 FROM nome_tabela LIMIT 10 OFFSET 20;
UNION: Usado para combinar resultados de várias consultas.


SELECT coluna1 FROM tabela1
UNION
SELECT coluna1 FROM tabela2;
INNER JOIN: Usado para combinar linhas de duas tabelas com base em uma condição.

SELECT coluna1, coluna2 FROM tabela1 INNER JOIN tabela2 ON tabela1.coluna = tabela2.coluna;
LEFT JOIN: Usado para obter todas as linhas da tabela à esquerda e as correspondentes da tabela à direita.

SELECT coluna1, coluna2 FROM tabela1 LEFT JOIN tabela2 ON tabela1.coluna = tabela2.coluna;
RIGHT JOIN: Usado para obter todas as linhas da tabela à direita e as correspondentes da tabela à esquerda.

SELECT coluna1, coluna2 FROM tabela1 RIGHT JOIN tabela2 ON tabela1.coluna = tabela2.coluna;
FULL OUTER JOIN: Usado para obter todas as linhas de ambas as tabelas.

SELECT coluna1, coluna2 FROM tabela1 FULL OUTER JOIN tabela2 ON tabela1.coluna = tabela2.coluna;
COUNT: Usado para contar o número de linhas retornadas por uma consulta.

SELECT COUNT(*) FROM nome_tabela;
SUM: Usado para calcular a soma de valores em uma coluna numérica.

SELECT SUM(valor) FROM nome_tabela;
AVG: Usado para calcular a média de valores em uma coluna numérica.

SELECT AVG(valor) FROM nome_tabela;
MAX: Usado para encontrar o valor máximo em uma coluna.

SELECT MAX(valor) FROM nome_tabela;
MIN: Usado para encontrar o valor mínimo em uma coluna.

SELECT MIN(valor) FROM nome_tabela;
LIKE: Usado para buscar padrões de texto em uma coluna.

SELECT coluna1 FROM nome_tabela WHERE coluna2 LIKE 'padrao%';
BETWEEN: Usado para filtrar valores dentro de um intervalo.

SELECT coluna1 FROM nome_tabela WHERE coluna2 BETWEEN valor1 AND valor2;
IN: Usado para filtrar valores que correspondem a uma lista de valores.

SELECT coluna1 FROM nome_tabela WHERE coluna2 IN (valor1, valor2, valor3);
CASE: Usado para aplicar condições em consultas, similar a um bloco IF-ELSE.

SELECT coluna1,
       CASE 
         WHEN coluna2 > 10 THEN 'Maior que 10'
         ELSE 'Menor ou igual a 10'
       END AS descricao
FROM nome_tabela;
DISTINCT: Usado para retornar valores distintos em uma coluna.

SELECT DISTINCT coluna1 FROM nome_tabela;
ORDER BY com Várias Colunas: Ordena resultados por múltiplas colunas.

SELECT coluna1, coluna2 FROM nome_tabela ORDER BY coluna1 ASC, coluna2 DESC;