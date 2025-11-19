-- ================================================
-- BANCO DE DADOS: ONG Miau Amigo
-- Modelo Lógico completo (3FN)
-- ================================================

CREATE TABLE Adotante (
    id_adotante SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    contato VARCHAR(100)
);

CREATE TABLE Gato (
    id_gato SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    status VARCHAR(20) CHECK (status IN ('resgatado','tratamento','disponivel','adotado')),
    condicao TEXT
);

CREATE TABLE Voluntario (
    id_vol SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100)
);

CREATE TABLE Doacao (
    id_doacao SERIAL PRIMARY KEY,
    valor DECIMAL(10,2) NOT NULL,
    data DATE NOT NULL,
    id_vol INT REFERENCES Voluntario(id_vol)
);

CREATE TABLE Estoque (
    id_item SERIAL PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    quantidade INT NOT NULL
);

CREATE TABLE Adocao (
    id_adocao SERIAL PRIMARY KEY,
    data DATE NOT NULL,
    status VARCHAR(20) CHECK (status IN ('pendente','aprovada','recusada')),
    id_gato INT UNIQUE REFERENCES Gato(id_gato),       -- um gato só pode ter uma adoção ativa
    id_adotante INT REFERENCES Adotante(id_adotante)
);

CREATE TABLE Consumo_Estoque (
    id_consumo SERIAL PRIMARY KEY,
    id_gato INT REFERENCES Gato(id_gato),
    id_item INT REFERENCES Estoque(id_item),
    quantidade INT NOT NULL,
    data DATE NOT NULL
);
