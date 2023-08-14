CREATE DATABASE futfeminino;
USE futfeminino;


CREATE TABLE tb_voto(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    datahoravoto DATETIME NOT NULL,
    id_uniformevotado INT NOT NULL,
    FOREIGN KEY (id_uniformevotado) REFERENCES tb_uniforme(id)
);


CREATE TABLE tb_delegacao(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    pais VARCHAR(255) NOT NULL,
    esporte VARCHAR(255) NOT NULL
);


CREATE TABLE tb_uniforme(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    cor VARCHAR(255) NOT NULL,
    imagem VARCHAR(255) NOT NULL
);


CREATE TABLE tb_login(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nomelogin VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL
);


CREATE TABLE tb_competicao(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    data DATE NOT NULL,
    Local VARCHAR(255) NOT NULL
);


CREATE TABLE tb_ingresso(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Tipoingresso VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    Quantidadedisponivel INT NOT NULL,
    id_competicao INT NOT NULL,
    FOREIGN KEY (id_competicao) REFERENCES tb_competicao(id)
);


CREATE TABLE tb_competidor(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    pais VARCHAR(255) NOT NULL,
    esporte VARCHAR(255) NOT NULL
);


CREATE TABLE tb_bebida(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Tipoingresso VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    Quantidadedisponivel INT NOT NULL,
    id_competicao INT NOT NULL,
    FOREIGN KEY (id_competicao) REFERENCES tb_competicao(id)
);


CREATE TABLE tb_alimento(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    Quantidadedisponivel INT NOT NULL,
    id_competicao INT NOT NULL,
    FOREIGN KEY (id_competicao) REFERENCES tb_competicao(id)
);