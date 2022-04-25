USE RPG_online
GO

--DML
INSERT INTO Usuarios VALUES ('jesclerson@gmail.com', '123rJal?23B')
INSERT INTO Classes VALUES ('Necromante', 'Comandante dos mortos')
INSERT INTO Personagens VALUES ('Juregue', 4, 5)
INSERT INTO Habilidades VALUES ('Supressão de Dor'), ('Reanimação'), ('Chamariz da perdição')
INSERT INTO ClasseHabilidade VALUES (5, 5), (5, 6)

UPDATE Classes
SET Nome = 'Monge'
WHERE ClasseID = 2
--Aproveitei para arrumar uma letra que estava em caps;

UPDATE Classes
SET Descricao = 'Um grande guerreiro de combate corpo a corpo'
WHERE ClasseID = 1

UPDATE Classes 
SET Descricao = 'Um suporte confiável e um habilidoso combatente'
WHERE ClasseID = 2 

UPDATE Hab

DELETE FROM Habilidades
WHERE HabilidadeID = 7

--FIM DML


--DQL
SELECT * FROM Usuarios
SELECT * FROM Classes
SELECT * FROM Habilidades
SELECT * FROM Personagens
SELECT * FROM ClasseHabilidade

SELECT P.Nome 'Nome Personagem', C.Nome 'Classe', C.Descricao FROM Personagens P
INNER JOIN Classes C
ON P.ClasseID = C.ClasseID
SELECT H.Nome FROM Habilidades H
LEFT JOIN Classes C
ON C.ClasseID = H.HabilidadeID


SELECT Habilidades.Nome FROM Habilidades
LEFT JOIN Classes
ON Classes.ClasseID = Habilidades.HabilidadeID

SELECT CH.HabilidadeId FROM ClasseHabilidade CH
LEFT JOIN Habilidades H
ON H.HabilidadeId = CH.ClasseID

--FIM DQL