-- Add table band
CREATE TABLE band (
    bandName varchar(50) PRIMARY KEY,
    creation YEAR,
    genre VARCHAR(50) NOT NULL
);

-- musician table update
ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;
ALTER TABLE musician ADD COLUMN role VARCHAR(50);
ALTER TABLE musician ADD COLUMN bandName VARCHAR(50);

-- init band data
INSERT INTO band (bandName, creation, genre)
VALUES ('Crazy Duo', 2015, 'rock'),
       ('Luna', 2009, 'classical'),
       ('Mysterio', 2019, 'pop');

-- update musician data
UPDATE musician SET bandName = 'Crazy Duo', role = 'vocals'  WHERE musicianName = 'Alina';
UPDATE musician SET bandName = 'Mysterio', role = 'guitar'  WHERE musicianName = 'Mysterio';
UPDATE musician SET bandName = 'Crazy Duo', role = 'percussion'  WHERE musicianName = 'Rainbow';
UPDATE musician SET bandName = 'Luna', role = 'piano'  WHERE musicianName = 'Luna';
