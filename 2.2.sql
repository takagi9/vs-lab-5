INSERT INTO groups (name, short_name, year, institute_id) VALUES
('Информатика и вычислительная техника','Б-ИВТ-25-1',2025,(SELECT id FROM institutes WHERE name='Институт математики и информатики')),
('Информатика и вычислительная техника','Б-ИВТ-25-2',2025,(SELECT id FROM institutes WHERE name='Институт математики и информатики')),
('Фундаментальная информатика и информационные технологии','Б-ФИИТ-25',2025,(SELECT id FROM institutes WHERE name='Институт математики и информатики')),
('Прикладная информатика','Б-ПИ-25',2025,(SELECT id FROM institutes WHERE name='Институт математики и информатики'));