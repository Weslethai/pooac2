-- autor Milena Barcia --

CREATE TABLE Serviços (
Id_Serviços         INT AUTO_INCREMENT PRIMARY KEY,
Nome                VARCHAR(80),
Preço               INT,
Descrição           TEXT,
forma_de_pagamento  VARCHAR(200),
Responsável         VARCHAR (100),
Prazo               VARCHAR(120),
Garantia            INT,
Contato             VARCHAR(100)

);

-- autor Lucas Marcone --

CREATE TABLE Produtos (
    Id_produto                INT AUTO_INCREMENT PRIMARY KEY,
    Nome                      VARCHAR(80),
    Preço                     DECIMAL(10,2),
    Descrição                 TEXT,
    forma_de_pagamento        VARCHAR(200),
    Categoria                 VARCHAR(100),
    Data_de_Validade          DATE, 
    Matéria_Prima             TEXT,
    Tamanho                   VARCHAR(20) 
);
-- autor Milena Barcia --
DELIMITER //

CREATE PROCEDURE inserir_Produto(
    IN Produtos_Nome                VARCHAR(80),
    IN Produtos_Preço               DECIMAL(10,2),
    IN Produtos_Descrição           TEXT,
    IN Produtos_forma_de_pagamento  VARCHAR(200),
    IN Produtos_Categoria          VARCHAR(100),
    IN Produtos_Data_de_Validade   DATE,
    IN Produtos_Matéria_Prima      TEXT,
    IN Produtos_Tamanho            VARCHAR(20)
)
BEGIN
   
    
  
    INSERT INTO Produtos
    (Nome, Preço, Descrição, forma_de_pagamento, Categoria, Data_de_Validade, Matéria_Prima, Tamanho) 
    VALUES 
    (Produtos_Nome, Produtos_Preço, Produtos_Descrição, Produtos_forma_de_pagamento, 
    Produtos_Categoria, Produtos_Data_de_Validade, Produtos_Matéria_Prima, Produtos_Tamanho);
    
  
END //

DELIMITER ;

CALL inserir_Produto(
    'Machado de Anão', 
    10.0, 
    'Machado de mitril, com lâmina dupla, entalhada com o encantamento da força, cabo de baboa com gravações personalizáveis na língua antiga dos anões', 
    '3 cabras e um osso de dragão', 
    'Arma', 
    '4500-12-23', 
    'Mitril', 
    'Grande'
);

DELIMITER //

CREATE PROCEDURE inserir_Serviço(
    IN Serviços_Nome                VARCHAR(80),
    IN Serviços_Preço               INT,
    IN Serviços_Descrição           TEXT,
    IN Serviços_forma_de_pagamento   VARCHAR(200),
    IN Serviços_Responsável         VARCHAR(100),
    IN Serviços_Prazo               VARCHAR(120),
    IN Serviços_Garantia            INT,
    IN Serviços_Contato             VARCHAR(100)
)
BEGIN
  
    -- Inserindo dados na tabela Pacotes
    INSERT INTO Serviços
    (Nome, Preço, Descrição, forma_de_pagamento, Responsável, Prazo, Garantia, Contato) 
    VALUES 
    (Serviços_Nome, Serviços_Preço, Serviços_Descrição, Serviços_forma_de_pagamento, Serviços_Responsável, Serviços_Prazo, Serviços_Garantia, Serviços_Contato);
    
    
END //

DELIMITER ;

CALL inserir_Serviço(
    'Upgrade de Machado', 
    15, 
    'Aprimoramento de machado pode incluir afiamento da lamina, troca do cabo, entalhe de novo feitiço ', 
    '5 dentes de dragão e uma pedra de mana', 
    'Glóin, filho de Gróin', 
    '30 dias', 
    12, 
    'Coruja pescadora-de-blakiston:Errol'
);