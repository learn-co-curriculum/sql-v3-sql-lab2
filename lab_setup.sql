DROP TABLE IF EXISTS division CASCADE;

CREATE TABLE division (
   id INTEGER PRIMARY KEY,
   name TEXT NOT NULL
);

INSERT INTO division (id, name) VALUES (1, 'Atlantic');
INSERT INTO division (id, name) VALUES  (2, 'Central');
INSERT INTO division (id, name) VALUES  (3, 'Northeast');
INSERT INTO division (id, name) VALUES  (4, 'Northwest');
INSERT INTO division (id, name) VALUES (5, 'Southeast');
INSERT INTO division (id, name) VALUES  (6, 'Pacific');

DROP TABLE IF EXISTS team CASCADE;

CREATE TABLE team (
   id INTEGER PRIMARY KEY,
   name TEXT NOT NULL,
   wins INTEGER NOT NULL,
   losses INTEGER NOT NULL,
   division_id INTEGER NOT NULL,
   FOREIGN KEY (division_id) REFERENCES division(id)
);

INSERT INTO team (id, name, wins, losses, division_id) VALUES (1,'Boston Blue Jays',43,16,3);
INSERT INTO team (id, name, wins, losses, division_id) VALUES (2,'Columbus Cardinals',34,27,2);
INSERT INTO team (id, name, wins, losses, division_id) VALUES (3,'Detroit Dodos',44,15,2);
INSERT INTO team (id, name, wins, losses, division_id) VALUES (4,'San Jose Swifts',43,12,6);
INSERT INTO team (id, name, wins, losses, division_id) VALUES (5,'Houston Hummingbirds',38,18,2);


DROP TABLE IF EXISTS player;

CREATE TABLE player (
   id INTEGER PRIMARY KEY,
   name TEXT NOT NULL,
   team_id INTEGER NOT NULL,
   FOREIGN KEY (team_id) REFERENCES team(id)
);

INSERT INTO player (id, name, team_id) VALUES (5,'D.B. Birch', 1);
INSERT INTO player (id, name, team_id) VALUES (11,'P.J. Willow', 1);
INSERT INTO player (id, name, team_id) VALUES (12,'A.K. Elm', 3);
INSERT INTO player (id, name, team_id) VALUES (13,'F.P. Pine', 4);
INSERT INTO player (id, name, team_id) VALUES (14,'Z.Z. Oak', 3);
INSERT INTO player (id, name, team_id) VALUES (15,'K.W. Maple', 4);
INSERT INTO player (id, name, team_id) VALUES (37,'P.Q. Chestnut', 1);
INSERT INTO player (id, name, team_id) VALUES (61,'A.B. Cherry', 1);
