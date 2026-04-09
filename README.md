#Encyclopaedia Metallum Database Project 🎸
Este projeto consiste na construção de uma base de dados relacional robusta e consistente, inspirada no site Encyclopaedia Metallum (The Metal Archives). O sistema foi modelado para gerenciar informações complexas sobre bandas, músicos, discografia e gravadoras dentro do universo do Heavy Metal e seus subgêneros.

🎯 Objetivo
O objetivo principal deste projeto foi aplicar conceitos avançados de Banco de Dados, como:

Modelagem Conceitual, Lógica e Física.

Implementação de Generalização e Especialização (Herança).

Garantia de integridade referencial através de PKs, FKs e Constraints de CHECK.

Normalização de dados para evitar redundâncias.

🛠️ Ferramentas Utilizadas
SGBD: Oracle Database (pela alta performance e segurança).

Modelagem: brModelo (Criação do Modelo Conceitual e Lógico).

Gestão de Scripts: Oracle SQL Developer.

🏗️ Estrutura do Banco de Dados
A arquitetura do banco foi desenhada para suportar as nuances da indústria musical, como álbuns divididos entre bandas (Splits) e músicos que tocam múltiplos instrumentos em diferentes projetos.

Principais Entidades:
Projeto Musical: Especializado em Banda ou Carreira Solo.

Álbuns: Especializado em Full-Length, EP/Single ou Split.

Músicos: Registro de dados biográficos e técnicos.

Instrumentos: Catálogo de instrumentos e especialidades.

Label (Gravadora): Gestão de sedes, contratos e lojas online.

Gênero: Classificação detalhada por subgênero e período de surgimento.

Destaques Técnicos:
Membros: Tabela associativa que rastreia a entrada, saída e status de um músico em um projeto específico.

Músicas: Detalhamento de faixas, durações e letras.

Check Constraints: Validações nativas no banco para garantir que campos de "Sim/Não" ou tipos de projeto sejam preenchidos corretamente.

📂 Organização do Repositório
O projeto está dividido em scripts sequenciais para facilitar a implantação:

Criação_De_Tabelas.sql: Contém o DDL (Data Definition Language) para criar toda a estrutura de tabelas.

PKs_FKs_CHECK.sql: Aplica as restrições de integridade, chaves primárias e regras de negócio (CHECKs).

Inserts_Para_As_Tabelas.sql: Popula o banco com dados reais para testes e validação.

Documentação de Projeto - Metal.docx: Documento completo detalhando a fundamentação teórica e modelos.

🚀 Como Executar
Para replicar este banco de dados em seu ambiente Oracle:

Crie o esquema/usuário no seu banco Oracle.

Execute o script de Criação das Tabelas.

Execute o script de Constraints para ativar a segurança dos dados.

Execute o script de Inserts para visualizar o banco em funcionamento.
