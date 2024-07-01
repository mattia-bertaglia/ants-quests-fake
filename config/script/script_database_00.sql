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

INSERT INTO utenti (nome, cognome, username, password, ruolo, mail, indirizzo, data_nascita) VALUES 
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

INSERT INTO prodotti (nome, categoria, prezzo, quantita, colore) VALUES 
('Laptop X1', 'Electronics', 999.99, 50, 'Black'),
('Smartphone A20', 'Electronics', 499.99, 100, 'Blue'),
('Headphones H100', 'Accessories', 79.99, 200, 'Red'),
('Smartwatch S5', 'Wearables', 199.99, 150, 'Black'),
('Gaming Console G7', 'Gaming', 299.99, 75, 'White'),
('Tablet T10', 'Electronics', 299.99, 120, 'Silver'),
('Camera C300', 'Photography', 599.99, 60, 'Black'),
('Bluetooth Speaker B1', 'Audio', 49.99, 250, 'Blue'),
('External Hard Drive E2', 'Storage', 89.99, 300, 'Black'),
('Monitor M24', 'Computers', 199.99, 80, 'Black'),
('Keyboard K100', 'Computers', 49.99, 400, 'White'),
('Mouse M200', 'Computers', 29.99, 500, 'Black'),
('Printer P3', 'Office', 149.99, 90, 'White'),
('Office Chair O1', 'Furniture', 129.99, 70, 'Gray'),
('Desk Lamp D2', 'Home', 39.99, 150, 'White'),
('Fitness Tracker F1', 'Wearables', 99.99, 110, 'Black'),
('Backpack B50', 'Accessories', 59.99, 200, 'Blue'),
('Coffee Maker C5', 'Appliances', 89.99, 85, 'Black'),
('Blender B3', 'Appliances', 69.99, 95, 'Red'),
('Air Purifier A1', 'Home', 129.99, 100, 'White');

INSERT INTO ordini (data_ordine, quantita, totale, utente_id) VALUES 
('2023-01-15', 2, 1999.98, 1),
('2023-01-20', 1, 499.99, 2),
('2023-02-05', 3, 239.97, 3),
('2023-02-10', 1, 199.99, 4),
('2023-02-15', 2, 599.98, 5),
('2023-02-20', 4, 1199.96, 1), 
('2023-03-05', 1, 599.99, 6),
('2023-03-10', 5, 249.95, 2), 
('2023-03-15', 2, 179.98, 7),
('2023-03-20', 3, 599.97, 8),
('2023-04-05', 2, 299.98, 3), 
('2023-04-10', 4, 599.96, 9),
('2023-04-15', 1, 149.99, 4), 
('2023-04-20', 2, 259.98, 10),
('2023-05-05', 3, 89.97, 11),
('2023-05-10', 1, 99.99, 5), 
('2023-05-15', 5, 649.95, 12),
('2023-05-20', 2, 179.98, 6), 
('2023-06-05', 3, 389.97, 13),
('2023-06-10', 1, 129.99, 14);

INSERT INTO ord_prod (ordine_id, prodotto_id) VALUES 
(1, 5),
(1, 12),
(2, 3),
(2, 8),
(3, 7),
(4, 1),
(5, 6),
(6, 2),
(6, 9),
(7, 4),
(8, 10),
(9, 11),
(9, 14),
(10, 13),
(11, 15),
(12, 16),
(13, 17),
(14, 18),
(15, 19),
(16, 20),
(17, 1),
(18, 2),
(18, 3),
(19, 4),
(20, 5);