CREATE TABLE PERFIS (
	ID INT NOT NULL AUTO_INCREMENT,
	DESCRICAO VARCHAR(50) NOT NULL,
	
	CONSTRAINT PK_PERFIS PRIMARY KEY(ID)
);

INSERT INTO PERFIS(DESCRICAO) VALUES('Administrador');

CREATE TABLE USUARIOS (
	ID INT NOT NULL AUTO_INCREMENT,
	ID_PERFIL INT NOT NULL,
	NOME VARCHAR(50) NOT NULL,
	SOBRENOME VARCHAR(50) NOT NULL,
	CPF BIGINT NOT NULL,
	EMAIL VARCHAR(100) NOT NULL,
	SENHA VARCHAR(100) NOT NULL,
	
	CONSTRAINT PK_USUARIOS PRIMARY KEY(ID),
	CONSTRAINT FK_PERFIS FOREIGN KEY(ID_PERFIL) REFERENCES PERFIS(ID)
);

INSERT INTO USUARIOS(ID_PERFIL, NOME, SOBRENOME, CPF, EMAIL, SENHA)
VALUES(1, 'F�bio', 'Faraco', 15201259766, 'f.faraco27@gmail.com', 'admin')
	 ,(1, 'Jos�', 'Henrique', 12345632401, 'j.henrique@gmail.com', 'admin')
	 ,(1, 'Alberto', 'Neves', 43545678901, 'a.neves@gmail.com', 'admin')
	 ,(1, 'Bruno', 'Costa', 65678678901, 'b.costa@gmail.com', 'admin')
	 ,(1, 'Caio', 'Junios', 12325678901, 'c.junior@gmail.com', 'admin')
	 ,(1, 'Diego', 'Moreira', 65345678901, 'd.moreira@gmail.com', 'admin')
	 ,(1, 'Everton', 'Lopes', 87345678901, 'e.lopes@gmail.com', 'admin')
	 ,(1, 'Ferdinand', 'Filho', 34567678901, 'f.filho@gmail.com', 'admin')
	 ,(1, 'Gabriel', 'Gomes', 33333478901, 'g.gomes@gmail.com', 'admin')
	 ,(1, 'Henry', 'Torres', 32345678901, 'h.torres@gmail.com', 'admin')
	 ,(1, 'Igor', 'Avelar', 54345678901, 'i.avelar@gmail.com', 'admin')
	 ,(1, 'Kosta', 'Corbrian', 77345678901, 'c.corbrian@gmail.com', 'admin');