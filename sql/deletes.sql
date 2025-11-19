-- 1. Remover registro de consumo incorreto
DELETE FROM Consumo_Estoque
WHERE id_consumo = 3;

-- 2. Remover doação duplicada
DELETE FROM Doacao
WHERE id_doacao = 2;

-- 3. Excluir gato que foi registrado erroneamente (somente se não possuir adoção)
DELETE FROM Gato
WHERE id_gato = 4
  AND id_gato NOT IN (SELECT id_gato FROM Adocao);
