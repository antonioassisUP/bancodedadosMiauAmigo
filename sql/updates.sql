-- 1. Atualizar status de um gato após adoção
UPDATE Gato
SET status = 'adotado'
WHERE id_gato = 1;

-- 2. Atualizar quantidade de estoque após consumo
UPDATE Estoque
SET quantidade = quantidade - 2
WHERE id_item = 1;

-- 3. Ajustar contato de voluntário
UPDATE Voluntario
SET contato = 'novo_email@ong.com'
WHERE id_vol = 2;
