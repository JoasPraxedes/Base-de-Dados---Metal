/* ======================================================================
   DESAFIO 1: Inserção Dinâmica (INSERT com SELECT)
   O Cenário: A banda "Sepultura" acabou de assinar com a gravadora "Nuclear Blast" e lançou um novo EP surpresa.
   No entanto, num ambiente real, tu não sabes o IdLabel de cor.
   ====================================================================== */
   /* Escreve um script de INSERT para a tabela TB_ALBUNS e TB_EP_SINGLE onde o IdLabel não é colocado de forma estática (ex: 1), 
   mas sim descoberto dinamicamente através de uma subquery 
  (um SELECT que procura o ID onde o NomeFantasia = 'Nuclear Blast').*/
 INSERT INTO TB_ALBUNS VALUES (999,(SELECT IdLabel FROM TB_LABEL WHERE NomeFantasia = 'Nuclear Blast'),'Revolusongs (Remastered)', 
                               to_date('01/05/2026'), NULL, NULL);
                               
 INSERT INTO TB_EP_SINGLE VALUES (999, 'N', 'S', 'War', 'S');
 
 /* ======================================================================
   DESAFIO 2: Atualização Condicional em Cadeia (UPDATE com Subqueries)
   O Cenário: Uma gravadora faliu (ex: "Cogumelo Records"). Quando isso acontece, o seu status operacional muda
   e as bandas associadas perdem a gravadora temporariamente.
   ====================================================================== */
   /* 1. Faz um UPDATE na tabela TB_LABEL mudando o StatusOperacional para 'Falida' onde o nome for 'Cogumelo Records'.
   2. Faz um UPDATE na tabela TB_PROJETO_MUSICAL mudando o Status para 'Procura de Selo' apenas para os projetos que estavam 
   associados a essa gravadora falida.*/
 UPDATE TB_LABEL SET StatusOperacional = 'Falida' WHERE NomeFantasia = 'Cogumelo Records';
 
 UPDATE TB_PROJETO_MUSICAL SET Status = 'Procura de Selo' WHERE IdLabel = (SELECT idlabel FROM TB_LABEL WHERE NomeFantasia = 'Cogumelo Records');
 
  /* ======================================================================
   DESAFIO 3: Registro de Novo Membro (Inserção Dinâmica com 2 Lookups)
   O Cenário: O músico 'Max Cavalera' voltou para a banda 'Sepultura' como convidado. Você precisa criar essa relação na tabela de membros, 
   mas não quer olhar na tabela quais são os IDs deles.
   ====================================================================== */
  /*Fazer um INSERT na tabela TB_MEMBROS buscando os IDs de ambos por nome.*/
 INSERT INTO TB_MEMBROS VALUES (888, (SELECT IdProjeto FROM TB_PROJETO_MUSICAL WHERE Nome = 'Sepultura'), 
                                (SELECT IdMusico FROM TB_MUSICO WHERE NomeArtistico = 'Max Cavalera'), 2026, NULL, 'Membro Convidado - Reunião Especial');


  /* ======================================================================
   DESAFIO 4: Atualização de Temas por Gênero (Update com Filtro de Relacionamento)
   O Cenário: O gênero 'Thrash Metal' evoluiu. O especialista do banco de dados decidiu que todas as bandas que pertencem a esse gênero devem ter seus 
   "Temas Líricos" atualizados para incluir uma nova temática social.
   ====================================================================== */
  /*Atualizar a tabela de projetos musicais baseando-se na tabela de gêneros.*/
 UPDATE TB_PROJETO_MUSICAL SET temasliricos =  temasliricos || ('; Crítica Social e Política') 
 WHERE IdProjeto = (SELECT IdProjeto FROM tb_genero_pertence_projmusical where
                    IdGenero = (SELECT IdGenero FROM TB_GENERO WHERE NomeGenero IN 'Thrash Metal'));
   
  /* ======================================================================
   DESAFIO 5: Lançamento de Álbum Full-Length (Inserção Dinâmica com Especialização)
   O Cenário: O projeto solo 'Mayhem' (ou outro que você tenha como Solo) acaba de lançar um álbum completo (Full-Length) 
   através da gravadora 'Nuclear Blast'.
   ====================================================================== */
  /*Inserir o álbum e sua especialização usando buscas por nomes para os IDs.*/
  --TB_ALBUNS
  INSERT INTO TB_ALBUNS VALUES (7000, (SELECT IdLabel FROM TB_LABEL WHERE NomeFantasia = 'Nuclear Blast'), 'Pure Fucking Armageddon - Part II', to_date('06/06/2026'), 
                                NULL, NULL);

 --TB_FULL_LENGTH
  INSERT INTO TB_FULL_LENGTH VALUES (7000, 'S', 'N', 'Estúdio', 'Pytten');
  
 --TB_PROJETOMUSICAL_TEM_ALBUNS
  INSERT INTO TB_PROJETOMUSICAL_TEM_ALBUNS VALUES ((SELECT IdProjeto FROM TB_PROJETO_MUSICAL WHERE Nome = 'Mayhem'), 7000);