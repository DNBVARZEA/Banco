create database if not exists Biblioteca;

use Biblioteca;

drop table Livros;
CREATE TABLE IF NOT EXISTS Livros (
    livros_id INT(11) PRIMARY KEY auto_increment,
    titulo VARCHAR(255),
    Autor VARCHAR(255),
    Editora VARCHAR(255),
    ano_publicacao INT(11),
    isbn VARCHAR(255)
);

drop table Autores;
CREATE TABLE IF NOT EXISTS Autores (
	Autores_id VARCHAR(255) primary key
);

drop table Editoras;
CREATE TABLE IF NOT EXISTS Editoras (
	Editoras_id VARCHAR(255) primary key
);

ALTER TABLE Livros ADD FOREIGN KEY (Autor) REFERENCES Autores (Autores_id);
ALTER TABLE Livros ADD FOREIGN KEY (Editora) REFERENCES Editoras (Editoras_id);

INSERT INTO Autores (Autores_id) VALUES ('John Green');
INSERT INTO Autores (Autores_id) VALUES ('J.K. Rowling');
INSERT INTO Autores (Autores_id) VALUES ('J.R.R. Tolkien');
INSERT INTO Autores (Autores_id) VALUES ('J.D. Salinger');
INSERT INTO Autores (Autores_id) VALUES ('George Orwell');
INSERT INTO Autores (Autores_id) VALUES ('Rick Riordan');
INSERT INTO Autores (Autores_id) VALUES ('João Guimarães Rosa');
INSERT INTO Autores (Autores_id) VALUES (' Machado de Assis');
INSERT INTO Autores (Autores_id) VALUES ('Graciliano Ramos');
INSERT INTO Autores (Autores_id) VALUES ('Machado de Assis');
INSERT INTO Autores (Autores_id) VALUES ('Aluísio Azevedo');
INSERT INTO Autores (Autores_id) VALUES ('  Machado de Assis');
INSERT INTO Autores (Autores_id) VALUES ('Mário de Andrade');

INSERT INTO Editoras (Editoras_id) VALUES (' Intrínseca');
INSERT INTO Editoras (Editoras_id) VALUES ('Rocco');
INSERT INTO Editoras (Editoras_id) VALUES ('Martins Fontes');
INSERT INTO Editoras (Editoras_id) VALUES ('Little, Brown and Company');
INSERT INTO Editoras (Editoras_id) VALUES (' Companhia Editora Nacional');
INSERT INTO Editoras (Editoras_id) VALUES ('Intrínseca');
INSERT INTO Editoras (Editoras_id) VALUES ('Nova Fronteira');
INSERT INTO Editoras (Editoras_id) VALUES ('Companhia das Letras');
INSERT INTO Editoras (Editoras_id) VALUES ('Companhia Editora Nacional');
INSERT INTO Editoras (Editoras_id) VALUES ('Martin Claret');
INSERT INTO Editoras (Editoras_id) VALUES (' Penguin Companhia');
INSERT INTO Editoras (Editoras_id) VALUES ('  Penguin Companhia');
INSERT INTO Editoras (Editoras_id) VALUES ('Penguin Companhia');

INSERT INTO Livros (titulo, Autor, Editora, ano_publicacao, isbn) VALUES ('A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, '978-85-8057-346-6');
INSERT INTO Livros (titulo, Autor, Editora, ano_publicacao, isbn) VALUES ('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, '978-85-3251-101-0');
INSERT INTO Livros (titulo, Autor, Editora, ano_publicacao, isbn) VALUES ('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Martins Fontes', 1954, '9788533603149');
INSERT INTO Livros (titulo, Autor, Editora, ano_publicacao, isbn) VALUES ('The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 1951, '9780316769488');
INSERT INTO Livros (titulo, Autor, Editora, ano_publicacao, isbn) VALUES ('1984', 'George Orwell', 'Companhia Editora Nacional', 1949, '978-85-221-0616-9');
INSERT INTO Livros (titulo, Autor, Editora, ano_publicacao, isbn) VALUES ('Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, '9788598078355');
INSERT INTO Livros (titulo, Autor, Editora, ano_publicacao, isbn) VALUES ('Grande Sertão: Veredas', 'João Guimarães Rosa', 'Nova Fronteira', 1956, '978-85-209-2325-1');
INSERT INTO Livros (titulo, Autor, Editora, ano_publicacao, isbn) VALUES ('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Companhia das Letras', 1881, '9788535910663');
INSERT INTO Livros (titulo, Autor, Editora, ano_publicacao, isbn) VALUES ('Vidas Secas', 'Graciliano Ramos', 'Companhia Editora Nacional', 1938, '9788572326972');
INSERT INTO Livros (titulo, Autor, Editora, ano_publicacao, isbn) VALUES ('O Alienista', 'Machado de Assis', 'Martin Claret', 1882, '9788572327429');
INSERT INTO Livros (titulo, Autor, Editora, ano_publicacao, isbn) VALUES ('O Cortiço', 'Aluísio Azevedo', 'Penguin Companhia', 1890, '9788579027048');
INSERT INTO Livros (titulo, Autor, Editora, ano_publicacao, isbn) VALUES ('Dom Casmurro', 'Machado de Assis', 'Penguin Companhia', 1899, '9788583862093');
INSERT INTO Livros (titulo, Autor, Editora, ano_publicacao, isbn) VALUES ('Macunaíma', 'Mário de Andrade', 'Companhia Editora Nacional', 1928, '9788503012302');