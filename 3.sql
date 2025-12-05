CREATE TABLE cathedrals (
	id SERIAL PRIMARY KEY,
	name VARCHAR(1024) NOT NULL,
	chief VARCHAR(1024) NOT NULL
);
ALTER TABLE groups
ADD COLUMN cathedral_id INTEGER;

INSERT INTO cathedrals (name,chief) VALUES
('Кафедра информационных технологий', 'Васильева Наталья Васильевна'),
('Математическая экономика и прикладная информатика', 'Матвеева Нюргуяна Николаевна');

SELECT * FROM cathedrals;
UPDATE groups
SET cathedral_id = (SELECT id FROM cathedrals WHERE name = 'КИТ')
WHERE short_name IN ('Б-ИВТ-25-1', 'Б-ИВТ-25-2', 'Б-ФИИТ-25');

UPDATE groups
SET cathedral_id = (SELECT id FROM cathedrals WHERE name = 'МЭПИ')
WHERE short_name = 'Б-ПИ-25-1';

SELECT * FROM groups
WHERE cathedral_id = (SELECT id FROM cathedrals WHERE name = 'КИТ');