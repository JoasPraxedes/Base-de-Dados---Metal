-- Criação da Tabela TB_ProjetoMusical e suas Especializações (TB_Carreira_Solo, TB_Banda)
CREATE TABLE TB_PROJETO_MUSICAL(
    IdProjeto number(5) NOT NULL,
    IdLabel number (5) NOT NULL,
    Nome varchar2(100) NOT NULL,
    PaisOrigem varchar2(100) NOT NULL,
    Localidade varchar2(100) NOT NULL,
    Status varchar2(50) NOT NULL,
    AnoFormacao number(4) NOT NULL,
    AnosAtividade varchar2(50) NOT NULL,
    TemasLiricos varchar2(600),
    TipoProjeto char(1) NOT NULL
);
    

-- Criação da Tabela Especializada - TB_Carreira_Solo
CREATE TABLE TB_CARREIRA_SOLO(
    IdProjeto number(5) NOT NULL,
    MultiInstrumentista char(1) NOT NULL
);
   
        
-- Criação da Tabela Especializada -  TB_Banda
CREATE TABLE TB_BANDA(
    IdProjeto number(5) NOT NULL,
    TipoFormacao varchar2(20) NOT NULL
);
    
    
-- Criação da Tabela Álbuns e suas Especializações (TB_Full_Length, TB_EP_Single, TB_Split)
-- Criação da Tabela TB_Álbuns
CREATE TABLE TB_ALBUNS(
    IdAlbum number(5) NOT NULL,
    IdLabel number(5) NOT NULL,
    Titulo varchar2(200) NOT NULL,
    DataLancamento date NOT NULL,
    LinkCapa varchar2(500),
    ReviewsResumo varchar2(4000) 
);


-- Criação da Tabela Especializada - TB_Full_Length
CREATE TABLE TB_FULL_LENGTH(
    IdAlbum number(5) NOT NULL,
    EhConceitual char(1) NOT NULL,
    PossuiBonusTrack char(1) NOT NULL,
    TipoGravacao varchar2(100) NOT NULL,
    EngenheiroSom varchar2(200) 
);
    

-- Criação da Tabela Especializada - TB_EP_Single
CREATE TABLE TB_EP_SINGLE(
    IdAlbum number(5) NOT NULL,
    EhPromocional char(1) NOT NULL,
    ContemCover char(1) NOT NULL,
    MusicaPrincipalSingle varchar2(100) NOT NULL,
    VersaoLimitada char(1) NOT NULL
);
    
    
-- Criação da Tabela Especializada - TB_Split
CREATE TABLE TB_SPLIT(
    IdAlbum number(5) NOT NULL,
    QtdeBandasEnvolvidas number(3) NOT NULL,
    TemaSplit varchar2(50),
    LadoABanda varchar2(300) NOT NULL,
    LadoBBanda varchar2(300) NOT NULL,
    SeloCoLancamento varchar2(100),
    OrdemBandasTracklist varchar2(300) NOT NULL
);
    

-- CRIAÇÃO DAS TABELAS DE APOIO
-- Criação da Tabela TB_Músico
CREATE TABLE TB_MUSICO(
    IdMusico number(5) NOT NULL,
    NomeReal varchar2(50),
    NomeArtistico varchar2(50) NOT NULL,
    DataNascimento date,
    Genero char(1) NOT NULL,
    Nacionalidade varchar2(50) NOT NULL,
    DescricaoCuriosidades varchar2(2000)
);
   

-- Criação da tabela TB_Músicas
CREATE TABLE TB_MUSICAS(
    IdMusica number(5) NOT NULL,
    IdAlbum number(5) NOT NULL,
    Titulo varchar2(200) NOT NULL,
    Duracao number(5) NOT NULL,
    Letra varchar2(4000) 
);
 

-- Criação da Tabela TB_Instrumento
CREATE TABLE TB_INSTRUMENTO(
    IdInstrumento number(5) NOT NULL,
    Tipo varchar2(50) NOT NULL,
    Categoria varchar2(50) NOT NULL
);
    

-- Criação da Tabela TB_Gênero
CREATE TABLE TB_GENERO(
    IdGenero number(5) NOT NULL,
    NomeGenero varchar2(40),
    DataSurgimento number(4),
    DescricaoEstilo varchar2(2000)
);
    

-- Criação da Tabela TB_Label
CREATE TABLE TB_LABEL(
    IdLabel number(5) NOT NULL,
    NomeFantasia varchar2(50) NOT NULL,
    EnderecoSede varchar2(250) NOT NULL,
    PaisSede varchar2(50) NOT NULL,
    TelefoneContato varchar2(20), 
    StatusOperacional varchar2(25) NOT NULL,
    EspecialidadesEstilo varchar2(250) NOT NULL,
    DataFundacao date,
    PossuiLojaOnline char(1) NOT NULL
);
    

-- Criação da Tabela TB_Membros
CREATE TABLE TB_MEMBROS(
    IdMembro number(5) NOT NULL,
    IdProjeto number(5) NOT NULL,
    IdMusico number(5) NOT NULL,
    AnoEntrada number(4) NOT NULL,    
    AnoSaida number(4),
    StatusNoProjeto varchar2(90) NOT NULL
);
 
    
--CRIAÇÃO DE TABELADAS ASSOCIATIVAS

-- Criação da Tabela TB_ProjetoMusical_TEM_Albuns
CREATE TABLE TB_PROJETOMUSICAL_TEM_ALBUNS(
    IdProjeto number(5) NOT NULL,
    IdAlbum number(5) NOT NULL
);
    

-- Criação da Tabela TB_Genero_PERTENCE_ProjetoMusical
CREATE TABLE TB_GENERO_PERTENCE_PROJETOMUSICAL(
    IdGenero number(5) NOT NULL,
    IdProjeto number(5) NOT NULL
);

    
-- Criação da Tabela TB_Musico_TEM_CarreiraSolo
CREATE TABLE TB_MUSICO_TEM_CARREIRASOLO(
    IdMusico number(5) NOT NULL,
    IdProjeto number(5) NOT NULL
); 


-- Criação da Tabela TB_Musico_TOCA_Instrumento
CREATE TABLE TB_MUSICO_TOCA_INSTRUMENTO(
    IdMusico number(5) NOT NULL,
    IdInstrumento number(5) NOT NULL
);
-- Commit de ajuste (reconhecer sql no git)
