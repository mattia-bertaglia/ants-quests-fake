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
    `utente_id` INT NULL,
     FOREIGN KEY(`utente_id`) REFERENCES `utenti`(`id_utente`)
);

CREATE TABLE `ord_prod`(

    `ordine_id` INT NOT NULL ,
    `prodotto_id` INT NOT NULL,
    FOREIGN KEY(`prodotto_id`) REFERENCES `prodotti`(`id_prodotto`),
    FOREIGN KEY(`ordine_id`) REFERENCES `ordini`(`id_ordine`)
);

INSERT INTO users (nome, cognome, username, password, ruolo, mail, indirizzo, data_nascita) VALUES 
('Mario', 'Rossi', 'mrossi', 'passw0rd1!', 'admin', 'mario.rossi@example.com', 'Via Roma 1, Milano', '1980-01-15'),
('Luigi', 'Verdi', 'lverdi', 'greenLeaf2$', 'user', 'luigi.verdi@example.com', 'Via Milano 2, Roma', '1985-02-20'),
('Giulia', 'Bianchi', 'gbianchi', 'whiteStar3%', 'editor', 'giulia.bianchi@example.com', 'Via Firenze 3, Napoli', '1990-03-25'),
('Francesca', 'Neri', 'fneri', 'blackMoon4^', 'user', 'francesca.neri@example.com', 'Via Torino 4, Torino', '1992-04-30'),
('Paolo', 'Russo', 'prusso', 'redSun5&', 'admin', 'paolo.russo@example.com', 'Via Venezia 5, Palermo', '1988-05-10'),
('Elena', 'Galli', 'egalli', 'blueSky6*', 'user', 'elena.galli@example.com', 'Via Bologna 6, Genova', '1981-06-15'),
('Alessandro', 'Ferrari', 'aferrari', 'fastCar7(', 'editor', 'alessandro.ferrari@example.com', 'Via Pisa 7, Firenze', '1983-07-20'),
('Chiara', 'Costa', 'ccosta', 'coastalWave8)', 'user', 'chiara.costa@example.com', 'Via Verona 8, Bari', '1995-08-25'),
('Riccardo', 'Greco', 'rgreco', 'ancientTree9_', 'admin', 'riccardo.greco@example.com', 'Via Parma 9, Catania', '1979-09-30'),
('Sara', 'Marini', 'smarini', 'marineLife0+', 'user', 'sara.marini@example.com', 'Via Trieste 10, Messina', '1984-10-05'),
('Davide', 'Romano', 'dromano', 'romanEmpire1#', 'editor', 'davide.romano@example.com', 'Via Livorno 11, Verona', '1991-11-10'),
('Federica', 'Fontana', 'ffontana', 'fountain2@', 'user', 'federica.fontana@example.com', 'Via Ancona 12, Padova', '1986-12-15'),
('Giorgio', 'Conti', 'gconti', 'counting3!', 'admin', 'giorgio.conti@example.com', 'Via Lecce 13, Taranto', '1978-01-20'),
('Martina', 'De Luca', 'mdeluca', 'lucky4$', 'user', 'martina.deluca@example.com', 'Via Modena 14, Brescia', '1982-02-25'),
('Andrea', 'Pellegrini', 'apellegrini', 'pilgrim5%', 'editor', 'andrea.pellegrini@example.com', 'Via Udine 15, Parma', '1989-03-30'),
('Valentina', 'Ricci', 'vricci', 'richLife6^', 'user', 'valentina.ricci@example.com', 'Via Treviso 16, Perugia', '1993-04-05'),
('Marco', 'Leone', 'mleone', 'lionKing7&', 'admin', 'marco.leone@example.com', 'Via Pisa 17, Livorno', '1987-05-10'),
('Silvia', 'Orlando', 'sorlando', 'orlandoMagic8*', 'user', 'silvia.orlando@example.com', 'Via Siena 18, Ravenna', '1985-06-15'),
('Luca', 'Serra', 'lserra', 'serraMountain9(', 'editor', 'luca.serra@example.com', 'Via Matera 19, Reggio Emilia', '1990-07-20'),
('Anna', 'Ferraro', 'aferraro', 'ferrariRace0)', 'user', 'anna.ferraro@example.com', 'Via Prato 20, Rimini', '1994-08-25');