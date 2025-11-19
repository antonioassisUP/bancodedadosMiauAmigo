-- ================================================
-- Inserts iniciais
-- ================================================

-- Adotantes
INSERT INTO Adotante (nome, cpf, contato) VALUES
('Marcos Silva', '12345678901', 'marcos@email.com'),
('Ana Oliveira', '98765432100', 'ana@gmail.com');

-- Voluntários
INSERT INTO Voluntario (nome, contato) VALUES
('Carlos Souza', 'carlos@ong.com'),
('Juliana Santos', 'juliana@ong.com');

-- Gatos
INSERT INTO Gato (nome, idade, status, condicao) VALUES
('Mimi', 2, 'disponivel', 'saudável'),
('Thor', 4, 'tratamento', 'fratura na pata'),
('Luna', 1, 'resgatado', 'desidratada'),
('Pretinho', 3, 'disponivel', 'saudável');

-- Doações
INSERT INTO Doacao (valor, data, id_vol) VALUES
(80.00, '2025-01-10', 1),
(50.00, '2025-01-12', 2),
(120.00, '2025-01-15', 1);

-- Estoque
INSERT INTO Estoque (tipo, quantidade) VALUES
('Ração', 40),
('Areia', 25),
('Medicamento', 10);

-- Consumo Estoque
INSERT INTO Consumo_Estoque (id_gato, id_item, quantidade, data) VALUES
(1, 1, 1, '2025-01-16'),
(2, 3, 1, '2025-01-16'),
(3, 1, 2, '2025-01-17');

-- Adoção
INSERT INTO Adocao (data, status, id_gato, id_adotante) VALUES
('2025-01-20', 'aprovada', 1, 1);
