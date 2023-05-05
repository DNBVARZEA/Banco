## Essa atividade tem como finalidade encontrar essas perguntas no arquivo AtvMovies.sql

# E o Oscar vai para... ?
Muito bem, Pessoal... 

Hoje vamos trabalhar com o Oscar.
A ideia de premiar ou ser premiado é para reconhecer:
- Reconhecer uma qualidade
- Reconhecer um atributo
- Reconhecer o esforço... 

Reconhecer sempre.

Nem todos os prêmios são merecidos e nem todos que merecem ganham prêmios. 
Então vale mesmo a pena, premiar? 

<hr>

<div>
  <h3>1) Quantas vezes Natalie Portman foi indicada ao Oscar?</h3>
  <p><b>Código:</b> SELECT NAME, winner FROM movies WHERE NAME LIKE "%Natalie Portma%"</p>
  <p><b>Resposta:</b> Ela foi indicada 3 vezes ao Oscar</p>
</div>
        <br>
<div>
  <h3>2) Quantos Oscars Natalie Portman ganhou?</h3>
  <p><b>Código:</b> SELECT NAME, winner FROM movies WHERE NAME LIKE "%Natalie Portma%"</p>
  <p><b>Resposta:</b> Ela venceu apenas 1 vez o Oscar</p>
</div>
        <br>
<div>
  <h3>3) Amy Adams já ganhou algum Oscar?</h3>
  <p><b>Código:</b> SELECT NAME, winner FROM movies WHERE name LIKE "%Amy Adams%";</p>
  <p><b>Resposta:</b> Ela Nunca ganhou o Oscar</p>
</div>
        <br>
<div>
  <h3>4) A série de filmes Toy Story ganhou um Oscar em quais anos?</h3>
  <p><b>Código:</b> SELECT film, winner, year_ceremony FROM movies WHERE film LIKE "%Toy Story%";</p>
  <p><b>Resposta:</b> 2011 e 2020</p>
</div>
        <br>
<div>
  <h3>5) Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?</h3>
  <p><b>Código:</b> SELECT "Filmes" as category, count(*) as winner
FROM movies
WHERE category LIKE '%FILM%' and winner = "True"
UNION
SELECT "actor" as category, count(*) as winner
FROM movies
WHERE category LIKE '%ACTOR%' and winner = "True";</p>
  <p><b>Resposta:</b> A Categoria "Melhor Filme"</p>
</div>
        <br>
<div>
  <h3>6) O primeiro Oscar para melhor Atriz foi para quem? Em que ano?</h3>
  <p><b>Código:</b> SELECT name, year_ceremony, winner FROM movies WHERE category LIKE "%ACTRESS%" and winner = 1;</p>
  <p><b>Resposta:</b> Foi para Janet Gaynor em 1928</p>
</div>
        <br>
<div>
  <h3>7) Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0</h3>
  <p><b>Código:</b> UPDATE movies SET winner = 1 WHERE winner = "True"; <br>
UPDATE movies SET winner = 0 WHERE winner = "False";</p>
</div>
        <br>
<div>
  <h3>8) Em qual edição do Oscar "Crash" ganhou o prêmio principal?</h3>
  <p><b>Código:</b> SELECT film, winner, ceremony, category FROM movies WHERE film = "Crash" AND winner = 1;</p>
  <p><b>Resposta:</b> FILM EDITING, BEST PICTURE e WRITING</p>
</div>
        <br>
<div>
  <h3>9) Bom... dê um Oscar para um filme que merece muito, mas não ganhou.</h3>
  <p><b>Código:</b> INSERT INTO movies (year_film, year_ceremony, ceremony, category, name, film, winner) VALUES ('2016', '2017', '1', 'Best Film', 'Conrad Vernon', 'Sausage Party', 'True');</p>
</div>
        <br>
  <h3>10) O filme Central do Brasil aparece no Oscar?</h3>
  <p><b>Código:</b> SELECT film FROM movies where film like "%Central do Brasil%";</p>
  <p><b>Resposta:</b> Não Aparece</p>
</div>
        <br>
<div>
  <h3>11) Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. </h3>
  <p><b>Código 1:</b> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2007', '2020', '92', 'HONORARY AWARD', 'José Padilha', 'Tropa de Elite', 'True');</p>
  <p><b>Código 2:</b> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2014', '2020', '92', 'VISUAL EFFECTS', 'Wes Ball', 'Maze Runner: Correr ou Morrer', 'False');</p>
  <p><b>Código 3:</b> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2013', '2020', '92', 'MUSIC (Original Song)', 'Guillermo del Toro', 'Círculo de Fogo', 'True');</p>
</div>
        <br>
  <h3>12) Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.</h3>
  <p><b>Código:</b> UPDATE movies SET category = 'BEST SCREENPLAY' WHERE category = 'HONORARY AWARD';</p>
</div>
        <br>
<div>
  <h3>13) Qual foi o primeiro ano a ter um prêmio do Oscar?</h3>
  <p><b>Código:</b> SELECT year_ceremony FROM movies</p>
  <p><b>Resposta:</b> O Primeiro ano foi 1928</p>
</div>
        <br>
  <h3>14) Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?</h3>
  <p><b>Código:</b> SELECT film, category, year_ceremony, ceremony FROM movies WHERE year_ceremony = "2001";</p>
  <p><b>Melhor Filme:</b> Gladiator</p>
  <p><b>Melhor Atriz:</b> Julia Roberts</p>
  <p><b>Melhor Diretor:</b> Steven Soderbergh</p>
</div>
        <br>
<div>
  <h3>15) Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.</h3>
  <p><b>Código 1:</b> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2009', '2010', '1', 'ACTOR', 'Jamie Chung', 'Dragonball Evolution', 'False');</p>
  <p><b>Código 2:</b> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2021', '2021', '1', 'ACTOR', 'Jessica Henwick', 'Matrix Resurrections', 'False');</p>
  <p><b>Código 3:</b> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2001', '2002', '1', 'ACTOR', 'fatoumata diawara', 'Sia, The Dream of the Python', 'False');</p>
  <p><b>Código 4:</b> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2003', '2004', '1', 'ACTOR', 'charlize theron Chan', 'Monster - Desejo Assassino', 'False');</p>
  <p><b>Código 5:</b> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2010', '2011', '1', 'ACTOR', 'Zhao Tao', 'Memorias de Xangai', 'False');</p>
  <p><b>Código 6:</b> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('1988', '1988', '1', 'ACTOR', 'Dolly Rathebe', 'Mapantsula', 'False');</p>
  <p><b>Código 7:</b> INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2019', '2019', '1', 'ACTOR', 'Jackson Yee', 'Dias Melhores', 'False');</p>
</div>
        <br>
<div>
  <h3>16) Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece? </h3>
  <p><b>Resposta:</b> Meus pais que me criaram, premio de MELHORES PESSOAS</p>
</div>
