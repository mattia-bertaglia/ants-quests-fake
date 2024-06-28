create database javahome;
use javahome;


CREATE TABLE `prodotti`(
    `id_prodotto` INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nome` VARCHAR(255) NULL,
    `categoria` VARCHAR(255) NULL,
    `prezzo` DECIMAL(8, 2) NULL,
    `quantita` BIGINT NULL,
    `colore` VARCHAR(255) NULL
);
CREATE TABLE `utenti`(
    `id_utente` INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nome` VARCHAR(255) NULL,
    `cognome` VARCHAR(255) NULL,
    `username` VARCHAR(255) NULL,
    `password` VARCHAR(255) NULL,
    `ruolo` VARCHAR(255) NULL,
    `mail` VARCHAR(255) NULL,
    `indirizzo` VARCHAR(255) NULL,
    `data_nascita` DATE NULL
);
CREATE TABLE `ordini`(
    `id_ordine` INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `data_ordine` DATE NULL,
    `quantita` INT NULL,
    `totale` DECIMAL(8, 2) NULL,
    `utente_id` INT NULL
);

CREATE TABLE `ord_prod`(

    `ordine_id` INT NOT NULL ,
    `prodotto_id` INT NOT NULL
);



ALTER TABLE
    `ord_prod` ADD CONSTRAINT `ord_prod_prodotto_id_foreign` FOREIGN KEY(`prodotto_id`) REFERENCES `prodotti`(`id_prodotto`);
ALTER TABLE
    `ordini` ADD CONSTRAINT `ordini_utente_id_foreign` FOREIGN KEY(`utente_id`) REFERENCES `utenti`(`id_utente`);
ALTER TABLE
    `ord_prod` ADD CONSTRAINT `ord_prod_ordine_id_foreign` FOREIGN KEY(`ordine_id`) REFERENCES `ordini`(`id_ordine`);