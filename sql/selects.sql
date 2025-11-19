-- 1. Listar todos os gatos disponíveis para adoção
SELECT nome, idade, status
FROM Gato
WHERE status = 'disponivel';

-- 2. Doações ordenadas do maior para o menor valor
SELECT id_doacao, valor, data
FROM Doacao
ORDER BY valor DESC;

-- 3. Consultar gatos com consumo de estoque
SELECT g.nome AS gato, e.tipo AS item, c.quantidade, c.data
FROM Consumo_Estoque c
JOIN Gato g ON c.id_gato = g.id_gato
JOIN Estoque e ON c.id_item = e.id_item;

-- 4. Listar adoções aprovadas com dados do adotante
SELECT a.id_adocao, g.nome AS gato, ad.nome AS adotante, a.data
FROM Adocao a
JOIN Gato g ON a.id_gato = g.id_gato
JOIN Adotante ad ON a.id_adotante = ad.id_adotante
WHERE a.status = 'aprovada';

-- 5. Limitar a lista de voluntários (exemplo de LIMIT)
SELECT * FROM Voluntario LIMIT 2;
