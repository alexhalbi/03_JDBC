SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `schuldatenbank` DEFAULT CHARACTER SET latin1 ;
USE `schuldatenbank` ;

-- -----------------------------------------------------
-- Table `schuldatenbank`.`s_schueler`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `schuldatenbank`.`s_schueler` (
  `s_id` INT(10) NOT NULL ,
  `s_nachname` VARCHAR(45) NOT NULL ,
  `s_vorname` VARCHAR(45) NOT NULL ,
  `s_gebdat` DATE NOT NULL ,
  `s_ort` VARCHAR(100) NOT NULL ,
  `s_k_klasse` CHAR(4) NOT NULL ,
  PRIMARY KEY (`s_id`) ,
  UNIQUE INDEX `s_id` (`s_id` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO `s_schueler` (`s_id`,`s_nachname`,`s_vorname`,`s_gebdat`,`s_ort`,`s_k_klasse`) VALUES (1,'Adler','Richard','1966-03-12','Gumpendorf','03TA');
INSERT INTO `s_schueler` (`s_id`,`s_nachname`,`s_vorname`,`s_gebdat`,`s_ort`,`s_k_klasse`) VALUES (4,'Kneippp','Sebastian','1967-12-24','Fuenfhaus','03TA');
INSERT INTO `s_schueler` (`s_id`,`s_nachname`,`s_vorname`,`s_gebdat`,`s_ort`,`s_k_klasse`) VALUES (16,'Geyer','Walli','1966-07-23','Simmering','03TA');
INSERT INTO `s_schueler` (`s_id`,`s_nachname`,`s_vorname`,`s_gebdat`,`s_ort`,`s_k_klasse`) VALUES (19,'Sitzenbleiber','Eusebius','1951-02-22','Schweiz','03TA');
INSERT INTO `s_schueler` (`s_id`,`s_nachname`,`s_vorname`,`s_gebdat`,`s_ort`,`s_k_klasse`) VALUES (22,'Huber','Seppl','1968-02-02','Margareten','03TA');
INSERT INTO `s_schueler` (`s_id`,`s_nachname`,`s_vorname`,`s_gebdat`,`s_ort`,`s_k_klasse`) VALUES (55,'Schulz','Xandl','1964-09-03','Doebling','03TB');
INSERT INTO `s_schueler` (`s_id`,`s_nachname`,`s_vorname`,`s_gebdat`,`s_ort`,`s_k_klasse`) VALUES (74,'Hundertwasser','Friederike','1961-02-02','Landstrasse','03TA');
INSERT INTO `s_schueler` (`s_id`,`s_nachname`,`s_vorname`,`s_gebdat`,`s_ort`,`s_k_klasse`) VALUES (77,'Berger','Balduin','1964-03-13','Favoriten','03TB');
INSERT INTO `s_schueler` (`s_id`,`s_nachname`,`s_vorname`,`s_gebdat`,`s_ort`,`s_k_klasse`) VALUES (84,'Feuerstein','Bebbles','1966-06-12','Steintal','03TB');
INSERT INTO `s_schueler` (`s_id`,`s_nachname`,`s_vorname`,`s_gebdat`,`s_ort`,`s_k_klasse`) VALUES (88,'Mayer','Barbara','1965-05-03','Ottakring','03TB');
INSERT INTO `s_schueler` (`s_id`,`s_nachname`,`s_vorname`,`s_gebdat`,`s_ort`,`s_k_klasse`) VALUES (111,'Sandler','Eberhard','1959-04-19','Hoechststaettpl','03TB');
INSERT INTO `s_schueler` (`s_id`,`s_nachname`,`s_vorname`,`s_gebdat`,`s_ort`,`s_k_klasse`) VALUES (122,'Graf','Bobby','1962-01-01','Doebling','03TA');
INSERT INTO `s_schueler` (`s_id`,`s_nachname`,`s_vorname`,`s_gebdat`,`s_ort`,`s_k_klasse`) VALUES (1266,'Schlager','Ronnie','1963-04-23','Ottakring','03TB');