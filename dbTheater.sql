CREATE DATABASE eval_cinema CHARACTER SET utf8mb4


--- TABLES CREATION ---


CREATE TABLE pricing
(
    price_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    regular VARCHAR(30),
    student VARCHAR(30),
    less_than_14_years_old VARCHAR(30),
    online_payment BOOLEAN
)
ENGINE=InnoDB


CREATE TABLE customers 
(
    customer_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    firstname VARCHAR(30),
    lastname VARCHAR(30),
    email VARCHAR(30),
    password VARCHAR(30),
    price_id INT,
    CONSTRAINT fk_price_id
        FOREIGN KEY (price_id) REFERENCES pricing(price_id)
)
ENGINE=InnoDB


CREATE TABLE rooms
(
    room_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    number_of_place INT
)
ENGINE=InnoDB


CREATE TABLE theaters 
(
    theater_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    adress TEXT
)
ENGINE=InnoDB



CREATE TABLE showing 
(
    showing_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    movie VARCHAR(30),
    genre VARCHAR(30)
)
ENGINE=InnoDB


-- Creating link table showing_theaters ( as entities showing and theaters are strong)
CREATE TABLE showing_theaters(
    theater_id INT,
    CONSTRAINT fk_theater_id 
        FOREIGN KEY (theater_id) REFERENCES theaters(theater_id),
    showing_id INT,
    CONSTRAINT fk_showing_id
        FOREIGN KEY (showing_id) REFERENCES showing(showing_id),
    projection_date VARCHAR(30)
)
ENGINE=InnoDB



--- ADDING DATAS INTO TABLES ---

--- showing datas ---

insert into showing (movie, genre) values ('Pride of St. Louis, The', 'Drama');
insert into showing (movie, genre) values ('Out of Balance: ExxonMobil''s Impact on Climate Change', 'Documentary');
insert into showing (movie, genre) values ('Mona and the Time of Burning Love (Mona ja palavan rakkauden aika))', 'Drama');
insert into showing (movie, genre) values ('Blood Diamond', 'Action|Adventure|Crime|Drama|Thriller|War');
insert into showing (movie, genre) values ('Saint Joan', 'Drama');
insert into showing (movie, genre) values ('Tall T, The', 'Western');
insert into showing (movie, genre) values ('10.000 Km (Long Distance)', 'Drama|Romance');
insert into showing (movie, genre) values ('Tamara', 'Fantasy|Horror|Thriller');
insert into showing (movie, genre) values ('Unforgiven, The', 'Drama|Western');
insert into showing (movie, genre) values ('Captain America: The Winter Soldier', 'Action|Adventure|Sci-Fi|IMAX');
insert into showing (movie, genre) values ('Creeping Flesh, The', 'Horror|Sci-Fi');
insert into showing (movie, genre) values ('Dial M for Murder', 'Crime|Mystery|Thriller');
insert into showing (movie, genre) values ('Beneath the Planet of the Apes', 'Action|Sci-Fi');
insert into showing (movie, genre) values ('Christmas Carol, A', 'Drama|Fantasy');
insert into showing (movie, genre) values ('My Brother''s Wife (Mujer de mi hermano, La)', 'Drama');
insert into showing (movie, genre) values ('Moscow on the Hudson', 'Comedy|Drama');
insert into showing (movie, genre) values ('Sitting Pretty', 'Comedy');
insert into showing (movie, genre) values ('Alice Doesn''t Live Here Anymore', 'Drama|Romance');
insert into showing (movie, genre) values ('Oh, Susanna!', 'Romance|Western');
insert into showing (movie, genre) values ('Beneath the Darkness', 'Thriller');

--- showing_theaters datas --

insert into showing_theaters (projection_date) values ('3/21/2022');
insert into showing_theaters (projection_date) values ('3/18/2022');
insert into showing_theaters (projection_date) values ('8/19/2022');
insert into showing_theaters (projection_date) values ('4/24/2022');
insert into showing_theaters (projection_date) values ('7/27/2022');
insert into showing_theaters (projection_date) values ('11/30/2021');
insert into showing_theaters (projection_date) values ('9/23/2022');
insert into showing_theaters (projection_date) values ('5/5/2022');
insert into showing_theaters (projection_date) values ('9/23/2022');
insert into showing_theaters (projection_date) values ('2/17/2022');
insert into showing_theaters (projection_date) values ('3/18/2022');
insert into showing_theaters (projection_date) values ('8/11/2022');
insert into showing_theaters (projection_date) values ('10/26/2022');
insert into showing_theaters (projection_date) values ('1/20/2022');
insert into showing_theaters (projection_date) values ('2/14/2022');
insert into showing_theaters (projection_date) values ('7/26/2022');
insert into showing_theaters (projection_date) values ('5/1/2022');
insert into showing_theaters (projection_date) values ('7/8/2022');
insert into showing_theaters (projection_date) values ('10/16/2022');
insert into showing_theaters (projection_date) values ('11/17/2022');



--- theaters datas ---

insert into theaters (adress) values ('sed interdum venenatis turpis enim');
insert into theaters (adress) values ('pede ullamcorper augue a');
insert into theaters (adress) values ('nullam orci pede venenatis');
insert into theaters (adress) values ('felis sed interdum venenatis turpis');
insert into theaters (adress) values ('vestibulum sed magna at nunc');


--- customers datas ---

insert into customers (firstname, lastname, email, password) values ('Demetre', 'Ferry', 'dferry0@comcast.net', '$2y$10$5osxEFmHgu8LYYjUlF9hHeixb2BxA.vaYtGmYqBIbd48K8oN864xy');
insert into customers (firstname, lastname, email, password) values ('Heida', 'McGairl', 'hmcgairl1@cdc.gov', '$2y$10$ZgI8O/ASlLN3rRDX9Tl4KeSNnIc5ubxG1FouzVJ1RgllcCiSWk6DK');
insert into customers (firstname, lastname, email, password) values ('Queenie', 'Ughetti', 'qughetti2@theguardian.com', '$2y$10$Dg8ynVh/930W9hIqu/5GwOP0U/fcaVFDwCwY9A.jrVzQRrhhIulsi');
insert into customers (firstname, lastname, email, password) values ('Rossy', 'Cousans', 'rcousans3@zdnet.com', '$2y$10$nG9dVc4DUxBnVDwxBsWIrubza16UgMaXQPtvJEz9xYuBYBYuawyCW');
insert into customers (firstname, lastname, email, password) values ('Alfonso', 'Kilian', 'akilian4@bluehost.com', '$2y$10$BYCq1GRnYzY0vdR0VV7wteb/R19FKmrpKYZaNPS2MLsoEj20ZYX2C');
insert into customers (firstname, lastname, email, password) values ('Jeffrey', 'Herley', 'jherley5@fda.gov', '$2y$10$WD8iBKAjlIzYmffE7.5LcuqO7necXk/rWePti.Vfb7yVg/nxwf4Na');
insert into customers (firstname, lastname, email, password) values ('Ludwig', 'Hyde', 'lhyde6@wufoo.com', '$2y$10$z1yxFbruiDoIGODXraeB9eRcGxKSNNYi0C9Qo52Ho/FU22zmPG8WG');
insert into customers (firstname, lastname, email, password) values ('Latia', 'French', 'lfrench7@4shared.com', '$2y$10$MBAMOgDKkSRGZp9Ksc3L3egAd.B3vnDfdJKW7lGm4welwC/k8I9d.');
insert into customers (firstname, lastname, email, password) values ('Giuseppe', 'Foucher', 'gfoucher8@trellian.com', '$2y$10$lBQ05LVDK2vZqNme9jO6NuMOYLu8EO6D3gmyuQt54AeKVB6iBMlue');
insert into customers (firstname, lastname, email, password) values ('Farly', 'Diter', 'fditer9@digg.com', '$2y$10$JEP01Hz/VyHr5OnK1n2EBulMCxfhEh6bT8otXiGRFnoPuqzAlG1yS');
insert into customers (firstname, lastname, email, password) values ('Jude', 'Gossart', 'jgossarta@phoca.cz', '$2y$10$4Y501iShnD.gtAWdKKkEc.RCH0AsN7ExeTukT8aLVbLjI8uBSgtEK');
insert into customers (firstname, lastname, email, password) values ('Doralin', 'MacNalley', 'dmacnalleyb@blogtalkradio.com', '$2y$10$xMFQljnPh1QGCvoUYARmW.30BvUIbVO6UjxV9nqaD9FWI4Nj13dLy');
insert into customers (firstname, lastname, email, password) values ('Hanson', 'Yarnall', 'hyarnallc@skyrock.com', '$2y$10$B/RKwGL/eImR3XpcBlu/0.qY71EmiUCU1aXaUxakq1u46LN8Az5bO');
insert into customers (firstname, lastname, email, password) values ('Britt', 'Scarlett', 'bscarlettd@topsy.com', '$2y$10$P9K3pCnsD2pnMVm4nav33.bfUc.QVVeREBbNuJxpzfqtQw11OqzwW');
insert into customers (firstname, lastname, email, password) values ('Tiffani', 'Lightwing', 'tlightwinge@cmu.edu', '$2y$10$0Oqv/OMtN649ZMZ1ZR9aJuoDrIBPYdU1gct/GKqWAOIM6aZfFDZgS');
insert into customers (firstname, lastname, email, password) values ('Egbert', 'Du Fray', 'edufrayf@shinystat.com', '$2y$10$mqEwPj9kefBex/Nobd.g5uzSUuv2ZIsOlpgqgPG1AKm.QPtSo3OAS');
insert into customers (firstname, lastname, email, password) values ('Boniface', 'Puddan', 'bpuddang@utexas.edu', '$2y$10$z1sXxjVaE09HdSgR.CBhjubnXL/wY/xTzxZDxEvJEQgd/k89FYZhS');
insert into customers (firstname, lastname, email, password) values ('Wallace', 'Scutter', 'wscutterh@netvibes.com', '$2y$10$fKO7dJl.oc3vGDMPdj1KEeXwRRBnRwei3TxYmCgimnqIVtC.O7lCO');
insert into customers (firstname, lastname, email, password) values ('Heddie', 'Duligall', 'hduligalli@jiathis.com', '$2y$10$guiqw4TIij8tdwI55Dueo.YvXVnW/dMasmLjGNRxua8y16D23kQEG');
insert into customers (firstname, lastname, email, password) values ('Martainn', 'Yarranton', 'myarrantonj@blogger.com', '$2y$10$J41.UJJrDkuGLBx5.iskj.rVd6SOL7zWFyFHnAsXOz7IJ6JBadS4G');


--- pricing datas --- 

insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', true);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', true);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', true);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', true);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', true);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', true);
insert into pricing (regular, student, less_than_14_years_old, online_payment) values ('€15,00', '€10,00', '$7.00', false);

--- rooms datas --- 

insert into rooms (number_of_place) values (180);
insert into rooms (number_of_place) values (178);
insert into rooms (number_of_place) values (158);
insert into rooms (number_of_place) values (169);
insert into rooms (number_of_place) values (169);
insert into rooms (number_of_place) values (150);
insert into rooms (number_of_place) values (187);
insert into rooms (number_of_place) values (185);
insert into rooms (number_of_place) values (175);
insert into rooms (number_of_place) values (168);
insert into rooms (number_of_place) values (190);
insert into rooms (number_of_place) values (188);
insert into rooms (number_of_place) values (186);
insert into rooms (number_of_place) values (151);
insert into rooms (number_of_place) values (200);
insert into rooms (number_of_place) values (183);
insert into rooms (number_of_place) values (176);
insert into rooms (number_of_place) values (196);
insert into rooms (number_of_place) values (162);
insert into rooms (number_of_place) values (182);


--- EXPORT DATABASE COMMAND (powershell) ---

-- mysqldump -u root -p eval_cinema > C:\wamp64\mySqlbackup\dumpEvalcinema.sql