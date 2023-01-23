-- Active: 1674471887896@@127.0.0.1@3306

-- Tabelas já foram criadas
CREATE TABLE bands (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL
);

CREATE TABLE songs (
    id TEXT PRIMARY KEY UNIQUE NOT NULL,
    name TEXT NOT NULL,
    band_id TEXT NOT NULL,
    FOREIGN KEY (band_id) REFERENCES bands (id)
);

---------------------------------------------------------
SELECT * FROM bands; -- VISUALIZAR A TABELA bands
--DROP TABLE bands; --DELETAR A TABELA bands

SELECT * FROM songs; -- VISUALIZAR A TABELA songs
--DROP TABLE songs; -- DELETAR A TABELA songs
---------------------------------------------------------
--INSERT INTO bands (id, name) -- POPULANDO A TABELA bands
--VALUES
    --("b001", "Slipknot");

--UPDATE bands
--SET
    --id = "b002",
    --name = "Korn"
--WHERE
    --id = "b001";
