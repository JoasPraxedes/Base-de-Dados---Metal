--Script para Excluir as TABELAS

-- 1. Tabelas Associativas e de Relacionamento N:N
    DROP TABLE TB_MUSICO_TOCA_INSTRUMENTO;
    DROP TABLE TB_MUSICO_TEM_CARREIRASOLO;
    DROP TABLE TB_GENERO_PERTENCE_PROJMUSICAL;
    DROP TABLE TB_PROJETOMUSICAL_TEM_ALBUNS;
    DROP TABLE TB_MEMBROS;
    DROP TABLE TB_MUSICAS;

-- 2. Tabelas Especializadas (Filhas)
    DROP TABLE TB_BANDA;
    DROP TABLE TB_CARREIRA_SOLO;
    DROP TABLE TB_FULL_LENGTH;
    DROP TABLE TB_EP_SINGLE;
    DROP TABLE TB_SPLIT;

-- 3. Tabelas Principais (Entidades Fortes que possuem FKs para as Tabelas Base)
    DROP TABLE TB_ALBUNS;
    DROP TABLE TB_PROJETO_MUSICAL;

-- 4. Tabelas Base (Não possuem dependências / Não têm FKs)
    DROP TABLE TB_LABEL; 
    DROP TABLE TB_GENERO;
    DROP TABLE TB_INSTRUMENTO;
    DROP TABLE TB_MUSICO; 