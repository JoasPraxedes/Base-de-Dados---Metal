-- ==========================================================
-- 1. TABELAS DE BASE (SEM DEPENDÊNCIAS)
-- ==========================================================

-- Gravadoras (TB_LABEL)
INSERT ALL
  INTO TB_LABEL VALUES (1, 'Nuclear Blast', 'Oeschstrasse 40', 'Alemanha', '+49 7162', 'Ativa', 'Extreme Metal', TO_DATE('1987-01-01','YYYY-MM-DD'), 'S')
  INTO TB_LABEL VALUES (2, 'Cogumelo Records', 'Av. Augusto de Lima', 'Brasil', '+55 31', 'Ativa', 'Thrash/Black Metal', TO_DATE('1980-01-01','YYYY-MM-DD'), 'S')
  INTO TB_LABEL VALUES (101, 'Roadrunner Records', '1633 Broadway', 'EUA', '+1 212', 'Ativa', 'Heavy Metal', TO_DATE('1980-01-01','YYYY-MM-DD'), 'S')
  INTO TB_LABEL VALUES (102, 'Metal Blade Records', '5632 Van Nuys Blvd', 'EUA', '+1 805', 'Ativa', 'Heavy/Thrash', TO_DATE('1982-01-01','YYYY-MM-DD'), 'S')
  INTO TB_LABEL VALUES (103, 'Napalm Records', 'Hammerplatz 2', 'Áustria', '+43 3842', 'Ativa', 'Symphonic/Folk', TO_DATE('1992-01-01','YYYY-MM-DD'), 'S')
  INTO TB_LABEL VALUES (104, 'Century Media', 'Leopoldstrasse 180', 'Alemanha', '+49 231', 'Ativa', 'Extreme Metal', TO_DATE('1988-01-01','YYYY-MM-DD'), 'S')
  INTO TB_LABEL VALUES (105, 'Relapse Records', 'P.O. Box 2060', 'EUA', '+1 610', 'Ativa', 'Death/Grind', TO_DATE('1990-01-01','YYYY-MM-DD'), 'S')
  INTO TB_LABEL VALUES (106, 'Peaceville Records', 'Music Lane', 'Reino Unido', '+44 123', 'Ativa', 'Doom Metal', TO_DATE('1987-01-01','YYYY-MM-DD'), 'S')
  INTO TB_LABEL VALUES (107, 'Osmose Productions', 'BP 57', 'França', '+33 000', 'Ativa', 'Black Metal', TO_DATE('1991-01-01','YYYY-MM-DD'), 'S')
  INTO TB_LABEL VALUES (108, 'Season of Mist', 'ZAC de la loutre', 'França', '+33 4', 'Ativa', 'Avant-garde Metal', TO_DATE('1996-01-01','YYYY-MM-DD'), 'S')
  INTO TB_LABEL VALUES (109, 'Hellion Records', 'Rua 24 de Maio', 'Brasil', '+55 11', 'Ativa', 'Heavy Metal', TO_DATE('1990-01-01','YYYY-MM-DD'), 'S')
  INTO TB_LABEL VALUES (110, 'Earache Records', 'Unit 1', 'Reino Unido', '+44 000', 'Ativa', 'Grindcore', TO_DATE('1985-01-01','YYYY-MM-DD'), 'S')
SELECT * FROM dual;

-- Instrumentos (TB_INSTRUMENTO)
INSERT ALL
  INTO TB_INSTRUMENTO VALUES (1, 'Guitarra', 'Cordas')
  INTO TB_INSTRUMENTO VALUES (2, 'Bateria', 'Percussão')
  INTO TB_INSTRUMENTO VALUES (3, 'Teclado', 'Teclas')
  INTO TB_INSTRUMENTO VALUES (201, 'Baixo', 'Cordas')
  INTO TB_INSTRUMENTO VALUES (202, 'Vocal Gutural', 'Voz')
  INTO TB_INSTRUMENTO VALUES (203, 'Vocal Limpo', 'Voz')
  INTO TB_INSTRUMENTO VALUES (204, 'Sintetizador', 'Teclas')
  INTO TB_INSTRUMENTO VALUES (205, 'Violoncelo', 'Cordas')
  INTO TB_INSTRUMENTO VALUES (206, 'Gaita de Fole', 'Sopro')
  INTO TB_INSTRUMENTO VALUES (207, 'Double Bass Drum', 'Percussão')
  INTO TB_INSTRUMENTO VALUES (208, 'Flauta', 'Sopro')
  INTO TB_INSTRUMENTO VALUES (209, 'Teclado Hammond', 'Teclas')
  INTO TB_INSTRUMENTO VALUES (210, 'Percussão Industrial', 'Percussão')
SELECT * FROM dual;

-- Gêneros (TB_GENERO)
INSERT ALL
  INTO TB_GENERO VALUES (1, 'Thrash Metal', 1980, 'Estilo rápido e agressivo com foco em riffs.')
  INTO TB_GENERO VALUES (2, 'Black Metal', 1982, 'Atmosfera sombria e temas obscuros.')
  INTO TB_GENERO VALUES (301, 'Death Metal', 1983, 'Vocais guturais e técnica extrema.')
  INTO TB_GENERO VALUES (302, 'Power Metal', 1980, 'Melodias épicas e alta velocidade.')
  INTO TB_GENERO VALUES (303, 'Doom Metal', 1970, 'Ritmos lentos e atmosfera pesada.')
  INTO TB_GENERO VALUES (304, 'Prog Metal', 1985, 'Complexidade técnica e experimentalismo.')
  INTO TB_GENERO VALUES (305, 'Symphonic Metal', 1990, 'Elementos de música clássica e orquestral.')
  INTO TB_GENERO VALUES (306, 'Folk Metal', 1990, 'Mistura de Heavy Metal com música tradicional.')
  INTO TB_GENERO VALUES (307, 'Grindcore', 1987, 'Extrema agressividade e músicas curtas.')
  INTO TB_GENERO VALUES (308, 'Industrial Metal', 1980, 'Elementos eletrónicos e industriais.')
  INTO TB_GENERO VALUES (309, 'Gothic Metal', 1991, 'Atmosfera melancólica e gótica.')
  INTO TB_GENERO VALUES (310, 'Sludge Metal', 1988, 'Fusão de Doom Metal com Hardcore Punk.')
SELECT * FROM dual;

-- ==========================================================
-- 2. MÚSICOS E PROJETOS
-- ==========================================================

-- Músicos (TB_MUSICO)
INSERT ALL
  INTO TB_MUSICO VALUES (100, 'Maximiliano Cavalera', 'Max Cavalera', TO_DATE('1969-08-04','YYYY-MM-DD'), 'M', 'Brasil', 'Ex-membro fundador do Sepultura.')
  INTO TB_MUSICO VALUES (101, 'Vegard Tveitan', 'Ihsahn', TO_DATE('1975-10-10','YYYY-MM-DD'), 'M', 'Noruega', 'Fundador da banda Emperor.')
  INTO TB_MUSICO VALUES (5001, 'George Fisher', 'Corpsegrinder', TO_DATE('1970-07-08','YYYY-MM-DD'), 'M', 'EUA', 'Conhecido pela sua técnica vocal e pescoço largo.')
  INTO TB_MUSICO VALUES (5002, 'Alissa White-Gluz', 'Alissa White-Gluz', TO_DATE('1985-08-31','YYYY-MM-DD'), 'F', 'Canadá', 'Vocalista dos Arch Enemy.')
  INTO TB_MUSICO VALUES (5003, 'Christopher Bowes', 'Christopher Bowes', TO_DATE('1986-06-23','YYYY-MM-DD'), 'M', 'Reino Unido', 'Vocalista dos Alestorm.')
  INTO TB_MUSICO VALUES (5004, 'Joe Duplantier', 'Joe Duplantier', TO_DATE('1976-10-19','YYYY-MM-DD'), 'M', 'França', 'Líder dos Gojira.')
  INTO TB_MUSICO VALUES (5005, 'Attila Csihar', 'Attila Csihar', TO_DATE('1971-03-29','YYYY-MM-DD'), 'M', 'Hungria', 'Vocalista lendário dos Mayhem.')
  INTO TB_MUSICO VALUES (5006, 'Kim Bendix Petersen', 'King Diamond', TO_DATE('1956-06-14','YYYY-MM-DD'), 'M', 'Dinamarca', 'Icónico pelo seu alcance vocal e maquilhagem.')
  INTO TB_MUSICO VALUES (5007, 'Devin Townsend', 'Devin Townsend', TO_DATE('1972-05-05','YYYY-MM-DD'), 'M', 'Canadá', 'Produtor e multi-instrumentista.')
  INTO TB_MUSICO VALUES (5008, 'Gylve Nagell', 'Fenriz', TO_DATE('1971-11-28','YYYY-MM-DD'), 'M', 'Noruega', 'Baterista e mente criativa dos Darkthrone.')
  INTO TB_MUSICO VALUES (5009, 'Mikael Åkerfeldt', 'Mikael Åkerfeldt', TO_DATE('1974-04-17','YYYY-MM-DD'), 'M', 'Suécia', 'Líder dos Opeth.')
  INTO TB_MUSICO VALUES (5010, 'Troy Sanders', 'Troy Sanders', TO_DATE('1973-09-08','YYYY-MM-DD'), 'M', 'EUA', 'Baixista e vocalista dos Mastodon.')
SELECT * FROM dual;

-- Projetos Musicais (TB_PROJETO_MUSICAL)
INSERT ALL
  INTO TB_PROJETO_MUSICAL VALUES (10, 1, 'Sepultura', 'Brasil', 'Belo Horizonte', 'Ativa', 1984, '1984-presente', 'Sociedade, Política, Natureza', 'B')
  INTO TB_PROJETO_MUSICAL VALUES (11, 2, 'Sarcófago', 'Brasil', 'Belo Horizonte', 'Inativa', 1985, '1985-2000', 'Satanismo, Anticristianismo', 'B')
  INTO TB_PROJETO_MUSICAL VALUES (12, 1, 'Ihsahn', 'Noruega', 'Notodden', 'Ativa', 2005, '2005-presente', 'Filosofia, Humanidade', 'S')
  INTO TB_PROJETO_MUSICAL VALUES (1001, 102, 'Cannibal Corpse', 'EUA', 'Buffalo', 'Ativa', 1988, '1988-presente', 'Gore, Morte', 'B')
  INTO TB_PROJETO_MUSICAL VALUES (1002, 104, 'Arch Enemy', 'Suécia', 'Halmstad', 'Ativa', 1995, '1995-presente', 'Rebelião, Sociedade', 'B')
  INTO TB_PROJETO_MUSICAL VALUES (1003, 103, 'Alestorm', 'Reino Unido', 'Perth', 'Ativa', 2004, '2004-presente', 'Pirataria, Humor', 'B')
  INTO TB_PROJETO_MUSICAL VALUES (1004, 101, 'Gojira', 'França', 'Baiona', 'Ativa', 1996, '1996-presente', 'Ambiente, Espiritualidade', 'B')
  INTO TB_PROJETO_MUSICAL VALUES (1005, 108, 'Mayhem', 'Noruega', 'Oslo', 'Ativa', 1984, '1984-presente', 'Morte, Ocultismo', 'B')
  INTO TB_PROJETO_MUSICAL VALUES (1006, 102, 'King Diamond', 'Dinamarca', 'Copenhague', 'Ativa', 1985, '1985-presente', 'Horror, Ocultismo', 'S')
  INTO TB_PROJETO_MUSICAL VALUES (1007, 104, 'Devin Townsend', 'Canadá', 'Vancouver', 'Ativa', 1997, '1997-presente', 'Ficção Científica, Humor', 'S')
  INTO TB_PROJETO_MUSICAL VALUES (1008, 106, 'Darkthrone', 'Noruega', 'Kolbotn', 'Ativa', 1986, '1986-presente', 'Natureza, Black Metal', 'B')
  INTO TB_PROJETO_MUSICAL VALUES (1009, 101, 'Opeth', 'Suécia', 'Estocolmo', 'Ativa', 1990, '1990-presente', 'Natureza, Melancolia', 'B')
  INTO TB_PROJETO_MUSICAL VALUES (1010, 105, 'Mastodon', 'EUA', 'Atlanta', 'Ativa', 2000, '2000-presente', 'Mitologia, Experiências', 'B')
SELECT * FROM dual;

-- Especializações de Projeto
INSERT ALL
  INTO TB_BANDA VALUES (10, 'Quarteto')
  INTO TB_BANDA VALUES (11, 'Trio')
  INTO TB_BANDA VALUES (1001, 'Quinteto')
  INTO TB_BANDA VALUES (1002, 'Quinteto')
  INTO TB_BANDA VALUES (1003, 'Quinteto')
  INTO TB_BANDA VALUES (1004, 'Quarteto')
  INTO TB_BANDA VALUES (1005, 'Quinteto')
  INTO TB_BANDA VALUES (1008, 'Duo')
  INTO TB_BANDA VALUES (1009, 'Quinteto')
  INTO TB_BANDA VALUES (1010, 'Quarteto')
SELECT * FROM dual;

INSERT ALL
  INTO TB_CARREIRA_SOLO VALUES (12, 'S')
  INTO TB_CARREIRA_SOLO VALUES (1006, 'N')
  INTO TB_CARREIRA_SOLO VALUES (1007, 'S')
SELECT * FROM dual;

-- ==========================================================
-- 3. ÁLBUNS E ESPECIALIZAÇÕES
-- ==========================================================

-- Álbuns (Pai)
INSERT ALL
  INTO TB_ALBUNS VALUES (9001, 102, 'Butchered at Birth', TO_DATE('1991-07-01', 'YYYY-MM-DD'), NULL, 'Clássico do Death Metal')
  INTO TB_ALBUNS VALUES (9002, 104, 'Will to Power', TO_DATE('2017-09-08', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9003, 103, 'Curse of the Crystal Coconut', TO_DATE('2020-05-29', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9004, 101, 'Fortitude', TO_DATE('2021-04-30', 'YYYY-MM-DD'), NULL, 'Foco em temas ambientais')
  INTO TB_ALBUNS VALUES (9005, 108, 'De Mysteriis Dom Sathanas', TO_DATE('1994-05-24', 'YYYY-MM-DD'), NULL, 'Marco do Black Metal')
  INTO TB_ALBUNS VALUES (9006, 102, 'Abigail', TO_DATE('1987-06-15', 'YYYY-MM-DD'), NULL, 'Álbum conceitual de horror')
  INTO TB_ALBUNS VALUES (9007, 104, 'Empath', TO_DATE('2019-03-29', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9008, 106, 'Transilvanian Hunger', TO_DATE('1994-02-17', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9009, 101, 'Blackwater Park', TO_DATE('2001-03-12', 'YYYY-MM-DD'), NULL, 'Produzido por Steven Wilson')
  INTO TB_ALBUNS VALUES (9010, 105, 'Leviathan', TO_DATE('2004-08-31', 'YYYY-MM-DD'), NULL, 'Inspirado em Moby Dick')
  INTO TB_ALBUNS VALUES (9011, 1, 'Roots', TO_DATE('1996-02-20', 'YYYY-MM-DD'), NULL, 'Influências tribais brasileiras')
  INTO TB_ALBUNS VALUES (9101, 105, 'Mastodon / High on Fire', TO_DATE('2002-01-01', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9102, 106, 'Emperor / Enslaved', TO_DATE('1993-06-01', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9103, 107, 'Immortal / Dummu Borgir', TO_DATE('1994-01-01', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9104, 110, 'Napalm Death / Coalesce', TO_DATE('1999-04-12', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9105, 105, 'Neurosis / Jarboe', TO_DATE('2003-10-14', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9106, 102, 'Cannibal Corpse / Immolation', TO_DATE('2003-11-01', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9107, 108, 'Cult of Luna / Julie Christmas', TO_DATE('2016-04-08', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9108, 101, 'Sepultura / Soulfly', TO_DATE('2005-01-01', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9109, 109, 'Holocausto / Chakal', TO_DATE('1987-12-01', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9110, 105, 'Agalloch / Nest', TO_DATE('2004-06-01', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9111, 2, 'Warfare Noise I', TO_DATE('1986-10-01', 'YYYY-MM-DD'), NULL, 'Split seminal mineiro')
  INTO TB_ALBUNS VALUES (9112, 101, 'Third World Chaos', TO_DATE('1993-01-01', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9113, 102, 'Haunting the Chapel', TO_DATE('1984-08-04', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9114, 101, 'The Trooper', TO_DATE('1983-06-20', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9115, 104, 'Opiate', TO_DATE('1992-03-10', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9116, 106, 'As the Flower Withers EP', TO_DATE('1992-05-22', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9117, 105, 'Broken', TO_DATE('1992-09-22', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9118, 103, 'Alestorm Single', TO_DATE('2021-01-01', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9119, 108, 'Telemark EP', TO_DATE('2020-02-01', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9120, 102, 'Beyond the Unknown', TO_DATE('1990-01-01', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9121, 104, 'The Eye of Every Storm', TO_DATE('2004-01-01', 'YYYY-MM-DD'), NULL, NULL)
  INTO TB_ALBUNS VALUES (9122, 1, 'Telemark', TO_DATE('2020-02-14', 'YYYY-MM-DD'), NULL, NULL)
SELECT * FROM dual;

-- Full Length
INSERT ALL
  INTO TB_FULL_LENGTH VALUES (9001, 'N', 'N', 'Estúdio', 'Scott Burns')
  INTO TB_FULL_LENGTH VALUES (9002, 'N', 'S', 'Estúdio', 'Jens Bogren')
  INTO TB_FULL_LENGTH VALUES (9003, 'N', 'S', 'Estúdio', 'Lasse Lammert')
  INTO TB_FULL_LENGTH VALUES (9004, 'N', 'N', 'Estúdio', 'Joe Duplantier')
  INTO TB_FULL_LENGTH VALUES (9005, 'N', 'N', 'Estúdio', 'Pytten')
  INTO TB_FULL_LENGTH VALUES (9006, 'S', 'S', 'Estúdio', 'Roberto Falcao')
  INTO TB_FULL_LENGTH VALUES (9007, 'N', 'S', 'Estúdio', 'Devin Townsend')
  INTO TB_FULL_LENGTH VALUES (9008, 'N', 'N', 'Lo-Fi', 'Darkthrone')
  INTO TB_FULL_LENGTH VALUES (9009, 'N', 'S', 'Estúdio', 'Steven Wilson')
  INTO TB_FULL_LENGTH VALUES (9010, 'S', 'N', 'Estúdio', 'Matt Bayles')
  INTO TB_FULL_LENGTH VALUES (9011, 'N', 'S', 'Estúdio', 'Ross Robinson')
SELECT * FROM dual;

-- Splits (TB_SPLIT)
INSERT ALL
  INTO TB_SPLIT VALUES (9101, 2, 'Mastodon / High on Fire', 'Mastodon', 'High on Fire', 'Relapse', '1-Mastodon, 2-HoF')
  INTO TB_SPLIT VALUES (9102, 2, 'Emperor / Enslaved', 'Emperor', 'Enslaved', 'Candlelight', '1-Emperor, 2-Enslaved')
  INTO TB_SPLIT VALUES (9103, 2, 'Immortal / Dummu Borgir', 'Immortal', 'Dimmu Borgir', 'Osmose', '50/50')
  INTO TB_SPLIT VALUES (9104, 2, 'Napalm Death / Coalesce', 'Napalm Death', 'Coalesce', 'Earache', 'Alternada')
  INTO TB_SPLIT VALUES (9105, 2, 'Neurosis / Jarboe', 'Neurosis', 'Jarboe', 'Neurot', 'Colaborativa')
  INTO TB_SPLIT VALUES (9106, 2, 'Cannibal Corpse / Immolation', 'Cannibal Corpse', 'Immolation', 'Metal Blade', 'Lado A / Lado B')
  INTO TB_SPLIT VALUES (9107, 2, 'Mariner', 'Cult of Luna', 'Julie Christmas', 'Indie Recordings', 'Vocal Partilhado')
  INTO TB_SPLIT VALUES (9108, 2, 'Sepultura / Soulfly', 'Sepultura', 'Soulfly', 'Roadrunner', 'Alternada')
  INTO TB_SPLIT VALUES (9109, 2, 'Holocausto / Chakal', 'Holocausto', 'Chakal', 'Cogumelo', 'Split 7')
  INTO TB_SPLIT VALUES (9110, 2, 'Agalloch / Nest', 'Agalloch', 'Nest', 'The End', 'Natureza')
  INTO TB_SPLIT VALUES (9111, 4, 'Warfare Noise I', 'Sarcófago / Mutilator', 'Chakal / Holocausto', 'Cogumelo', '4 bandas mineiras')
SELECT * FROM dual;

-- EP / Singles
INSERT ALL
  INTO TB_EP_SINGLE VALUES (9112, 'N', 'S', 'Third World Chaos', 'N')
  INTO TB_EP_SINGLE VALUES (9113, 'N', 'N', 'Chemical Warfare', 'S')
  INTO TB_EP_SINGLE VALUES (9114, 'N', 'S', 'The Trooper', 'N')
  INTO TB_EP_SINGLE VALUES (9115, 'N', 'N', 'Hush', 'N')
  INTO TB_EP_SINGLE VALUES (9116, 'N', 'N', 'The Bitterness...', 'S')
  INTO TB_EP_SINGLE VALUES (9117, 'N', 'S', 'Wish', 'N')
  INTO TB_EP_SINGLE VALUES (9118, 'S', 'N', 'Pirate Metal Drink', 'S')
  INTO TB_EP_SINGLE VALUES (9119, 'N', 'S', 'Stridig', 'N')
  INTO TB_EP_SINGLE VALUES (9120, 'N', 'N', 'Beyond the Unknown', 'N')
  INTO TB_EP_SINGLE VALUES (9121, 'S', 'N', 'No River to Take Me Home', 'S')
  INTO TB_EP_SINGLE VALUES (9122, 'N', 'S', 'Telemark', 'N')
SELECT * FROM dual;

-- ==========================================================
-- 4. TABELAS ASSOCIATIVAS E DETALHES
-- ==========================================================

-- Projetos e seus Álbuns (Sincronizado)
INSERT ALL
  INTO TB_PROJETOMUSICAL_TEM_ALBUNS VALUES (10, 9011) -- Sepultura / Roots
  INTO TB_PROJETOMUSICAL_TEM_ALBUNS VALUES (11, 9111) -- Sarcófago / Warfare Noise
  INTO TB_PROJETOMUSICAL_TEM_ALBUNS VALUES (1001, 9001)
  INTO TB_PROJETOMUSICAL_TEM_ALBUNS VALUES (1002, 9002)
  INTO TB_PROJETOMUSICAL_TEM_ALBUNS VALUES (1003, 9003)
  INTO TB_PROJETOMUSICAL_TEM_ALBUNS VALUES (1004, 9004)
  INTO TB_PROJETOMUSICAL_TEM_ALBUNS VALUES (1005, 9005)
  INTO TB_PROJETOMUSICAL_TEM_ALBUNS VALUES (1006, 9006)
  INTO TB_PROJETOMUSICAL_TEM_ALBUNS VALUES (1007, 9007)
  INTO TB_PROJETOMUSICAL_TEM_ALBUNS VALUES (1008, 9008)
  INTO TB_PROJETOMUSICAL_TEM_ALBUNS VALUES (1009, 9009)
  INTO TB_PROJETOMUSICAL_TEM_ALBUNS VALUES (1010, 9010)
SELECT * FROM dual;

-- Membros
INSERT ALL
  INTO TB_MEMBROS VALUES (1, 10, 100, 1984, 1996, 'Ex-Membro')
  INTO TB_MEMBROS VALUES (2, 12, 101, 2005, 9999, 'Ativo')
  INTO TB_MEMBROS VALUES (101, 1001, 5001, 1995, 9999, 'Ativo')
  INTO TB_MEMBROS VALUES (102, 1002, 5002, 2014, 9999, 'Ativo')
  INTO TB_MEMBROS VALUES (103, 1003, 5003, 2004, 9999, 'Ativo')
  INTO TB_MEMBROS VALUES (104, 1004, 5004, 1996, 9999, 'Ativo')
  INTO TB_MEMBROS VALUES (105, 1005, 5005, 2004, 9999, 'Ativo')
  INTO TB_MEMBROS VALUES (106, 1006, 5006, 1985, 9999, 'Ativo')
  INTO TB_MEMBROS VALUES (107, 1007, 5007, 1997, 9999, 'Ativo')
  INTO TB_MEMBROS VALUES (108, 1008, 5008, 1986, 9999, 'Ativo')
  INTO TB_MEMBROS VALUES (109, 1009, 5009, 1990, 9999, 'Ativo')
  INTO TB_MEMBROS VALUES (110, 1010, 5010, 2000, 9999, 'Ativo')
SELECT * FROM dual;

-- Músico Toca Instrumento
INSERT ALL
  INTO TB_MUSICO_TOCA_INSTRUMENTO VALUES (100, 1)
  INTO TB_MUSICO_TOCA_INSTRUMENTO VALUES (101, 3)
  INTO TB_MUSICO_TOCA_INSTRUMENTO VALUES (5001, 202)
  INTO TB_MUSICO_TOCA_INSTRUMENTO VALUES (5002, 202)
  INTO TB_MUSICO_TOCA_INSTRUMENTO VALUES (5003, 204)
  INTO TB_MUSICO_TOCA_INSTRUMENTO VALUES (5004, 1)
  INTO TB_MUSICO_TOCA_INSTRUMENTO VALUES (5005, 202)
  INTO TB_MUSICO_TOCA_INSTRUMENTO VALUES (5006, 203)
  INTO TB_MUSICO_TOCA_INSTRUMENTO VALUES (5007, 1)
  INTO TB_MUSICO_TOCA_INSTRUMENTO VALUES (5008, 207)
  INTO TB_MUSICO_TOCA_INSTRUMENTO VALUES (5009, 1)
  INTO TB_MUSICO_TOCA_INSTRUMENTO VALUES (5010, 201)
SELECT * FROM dual;

-- Gêneros dos Projetos
INSERT ALL
  INTO TB_GENERO_PERTENCE_PROJMUSICAL VALUES (1, 10)
  INTO TB_GENERO_PERTENCE_PROJMUSICAL VALUES (2, 11)
  INTO TB_GENERO_PERTENCE_PROJMUSICAL VALUES (301, 1001)
  INTO TB_GENERO_PERTENCE_PROJMUSICAL VALUES (301, 1002)
  INTO TB_GENERO_PERTENCE_PROJMUSICAL VALUES (306, 1003)
  INTO TB_GENERO_PERTENCE_PROJMUSICAL VALUES (301, 1004)
  INTO TB_GENERO_PERTENCE_PROJMUSICAL VALUES (2, 1005)
  INTO TB_GENERO_PERTENCE_PROJMUSICAL VALUES (309, 1006)
  INTO TB_GENERO_PERTENCE_PROJMUSICAL VALUES (304, 1007)
  INTO TB_GENERO_PERTENCE_PROJMUSICAL VALUES (2, 1008)
  INTO TB_GENERO_PERTENCE_PROJMUSICAL VALUES (304, 1009)
  INTO TB_GENERO_PERTENCE_PROJMUSICAL VALUES (310, 1010)
SELECT * FROM dual;

-- Músicas
INSERT ALL
  INTO TB_MUSICAS VALUES (1, 9011, 'Roots Bloody Roots', 212, 'Roots bloody roots! / Roots bloody roots! / I believe in our fate / We don''t need to fake / It''s all we wanna be / Watch me freak!')
  INTO TB_MUSICAS VALUES (101, 9001, 'Meat Hook Sodomy', 346, 'Dangling from the hook / Agonizing pain / [Trecho omitido por conter descrições de violência extrema explícita, mantendo a integridade do script] / Suffer!')
  INTO TB_MUSICAS VALUES (102, 9002, 'The World is Yours', 293, 'If you want the world, use your mind / Take control, feel the strength rise from within / If you really want it, the world is yours!')
  INTO TB_MUSICAS VALUES (103, 9003, 'Treasure Chest Party Quest', 213, 'We''re gonna drink all your beer / We''re gonna drink all your rum / We came to party and have some fun / Treasure chest party quest!')
  INTO TB_MUSICAS VALUES (104, 9004, 'Amazonia', 301, 'The greatest miracle / Is burning to the ground / Onto the next stage of the plan / Mourn the witness / The Amazonia is crying!')
  INTO TB_MUSICAS VALUES (105, 9005, 'Freezing Moon', 383, 'Everything here is so cold / Everything here is so dark / I remember it as from a dream / In the corner of this time / Diabolic shapes float by...')
  INTO TB_MUSICAS VALUES (106, 9006, 'The Mansion in Darkness', 285, 'The mansion in darkness / A silhouette against the moon / Seven horsemen riding / Through the night / Welcome to the family ghost!')
  INTO TB_MUSICAS VALUES (107, 9007, 'Genesis', 368, 'Let there be light / Let there be moon / Let there be stars / And let there be you / Genesis, the birth of a new age!')
  INTO TB_MUSICAS VALUES (108, 9008, 'Transilvanian Hunger', 360, 'Transilvanian hunger... cold... soul... / Your hands are cruel... to haunt... to haunt... / So pure, evil, cold / Transilvanian hunger!')
  INTO TB_MUSICAS VALUES (109, 9009, 'The Drapery Falls', 653, 'Please heal me / I can''t sleep / Thought I was beyond the phase / Weeping... / The drapery falls / And I am left alone.')
  INTO TB_MUSICAS VALUES (110, 9010, 'Blood and Thunder', 228, 'I think that someone is trying to kill me / Infecting my blood and destroying my mind... / Split your lungs with blood and thunder / When you see the white whale! / WHITE WHALE HOLY GRAIL!')
SELECT * FROM dual;

COMMIT;