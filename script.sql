SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema tp_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tp_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tp_db` DEFAULT CHARACTER SET utf8 ;
USE `tp_db` ;

-- -----------------------------------------------------
-- Table `mydb`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_db`.`Usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tp_db`.`Categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_db`.`Categorias` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tp_db`.`Notas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tp_db`.`Notas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `descripcion` VARCHAR(500) NOT NULL,
  `fecha_creacion` DATE NOT NULL,
  `fecha_modificacion` DATE NOT NULL,
  `eliminar` TINYINT(1) NOT NULL,
  `categoria_id` INT NOT NULL,
  `usuario_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Notas_categoria_idx` (`categoria_id` ASC),
  INDEX `fk_Notas_Users1_idx` (`usuario_id` ASC),
  CONSTRAINT `fk_Notas_categoria`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `tp_db`.`categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Notas_Users1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `tp_db`.`Usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

insert into Usuarios (id, nombre, email) values (1, 'Justinn', 'jpolleye0@ask.com');
insert into Usuarios (id, nombre, email) values (2, 'Nessie', 'nmckeown1@smugmug.com');
insert into Usuarios (id, nombre, email) values (3, 'Sophie', 'sklainer2@buzzfeed.com');
insert into Usuarios (id, nombre, email) values (4, 'Merell', 'mmcdonand3@mashable.com');
insert into Usuarios (id, nombre, email) values (5, 'Paxton', 'pdelgardillo4@businesswire.com');
insert into Usuarios (id, nombre, email) values (6, 'Erin', 'ekillick5@pcworld.com');
insert into Usuarios (id, nombre, email) values (7, 'Parke', 'psoutherell6@reddit.com');
insert into Usuarios (id, nombre, email) values (8, 'Ewart', 'ehesey7@dedecms.com');
insert into Usuarios (id, nombre, email) values (9, 'Carine', 'calentyev8@purevolume.com');
insert into Usuarios (id, nombre, email) values (10, 'Rivi', 'riddenden9@wufoo.com');

insert into Categorias (id, nombre) values (1, 'música');
insert into Categorias(id, nombre) values (2, 'cocina');
insert into Categorias (id, nombre) values (3, 'deporte');
insert into Categorias (id, nombre) values (4, 'curso');
insert into Categorias (id, nombre) values (5, 'personal');
insert into Categorias (id, nombre) values (6, 'trabajo');
insert into Categorias (id, nombre) values (7, 'casa');
insert into Categorias (id, nombre) values (8, 'paseo');
insert into Categorias (id, nombre) values (9, 'alumno');
insert into Categorias (id, nombre) values (10, 'profesor');


insert into Notas (id, titulo, descripcion, fecha_creacion, fecha_modificacion, eliminar, categoria_id, usuario_id) values (1, 'Sawayn-Hermiston', 'El Lorem Ipsum fue concebido como un texto de relleno, formateado de una cierta manera para permitir la presentación de elementos gráficos en documentos, sin necesidad de una copia formal. El uso de Lorem Ipsum permite a los diseñadores reunir los diseños y la forma del contenido antes de que el contenido se haya creado, dando al diseño y al proceso de producción más libertad.', '2020-12-23', '2022-08-14', true, 1, 1);
insert into Notas (id, titulo, descripcion, fecha_creacion, fecha_modificacion, eliminar, categoria_id, usuario_id) values (2, 'Abbott', 'El Lorem Ipsum fue concebido como un texto de relleno, formateado de una cierta manera para permitir la presentación de elementos gráficos en documentos, sin necesidad de una copia formal. El uso de Lorem Ipsum permite a los diseñadores reunir los diseños y la forma del contenido antes de que el contenido se haya creado, dando al diseño y al proceso de producción más libertad.', '2021-08-06', '2021-11-21', false, 2, 2);
insert into Notas (id, titulo, descripcion, fecha_creacion, fecha_modificacion, eliminar, categoria_id, usuario_id) values (3, 'Kihn', 'El Lorem Ipsum fue concebido como un texto de relleno, formateado de una cierta manera para permitir la presentación de elementos gráficos en documentos, sin necesidad de una copia formal. El uso de Lorem Ipsum permite a los diseñadores reunir los diseños y la forma del contenido antes de que el contenido se haya creado, dando al diseño y al proceso de producción más libertad.', '2021-06-11', '2022-01-23', false, 3, 3);
insert into Notas (id, titulo, descripcion, fecha_creacion, fecha_modificacion, eliminar, categoria_id, usuario_id) values (4, 'Anderson, Satterfield and Russel', 'El Lorem Ipsum fue concebido como un texto de relleno, formateado de una cierta manera para permitir la presentación de elementos gráficos en documentos, sin necesidad de una copia formal. El uso de Lorem Ipsum permite a los diseñadores reunir los diseños y la forma del contenido antes de que el contenido se haya creado, dando al diseño y al proceso de producción más libertad.', '2020-11-29', '2022-01-28', false, 4, 4);
insert into Notas (id, titulo, descripcion, fecha_creacion, fecha_modificacion, eliminar, categoria_id, usuario_id) values (5, 'Kerluke', 'El Lorem Ipsum fue concebido como un texto de relleno, formateado de una cierta manera para permitir la presentación de elementos gráficos en documentos, sin necesidad de una copia formal. El uso de Lorem Ipsum permite a los diseñadores reunir los diseños y la forma del contenido antes de que el contenido se haya creado, dando al diseño y al proceso de producción más libertad.', '2020-12-26', '2022-05-05', false, 5, 5);
insert into Notas (id, titulo, descripcion, fecha_creacion, fecha_modificacion, eliminar, categoria_id, usuario_id) values (6, 'Okuneva', 'El Lorem Ipsum fue concebido como un texto de relleno, formateado de una cierta manera para permitir la presentación de elementos gráficos en documentos, sin necesidad de una copia formal. El uso de Lorem Ipsum permite a los diseñadores reunir los diseños y la forma del contenido antes de que el contenido se haya creado, dando al diseño y al proceso de producción más libertad.', '2020-10-04', '2022-07-03', true, 6, 6);
insert into Notas (id, titulo, descripcion, fecha_creacion, fecha_modificacion, eliminar, categoria_id, usuario_id) values (7, 'Stokes', 'El Lorem Ipsum fue concebido como un texto de relleno, formateado de una cierta manera para permitir la presentación de elementos gráficos en documentos, sin necesidad de una copia formal. El uso de Lorem Ipsum permite a los diseñadores reunir los diseños y la forma del contenido antes de que el contenido se haya creado, dando al diseño y al proceso de producción más libertad.', '2021-02-24', '2022-02-07', false, 7, 7);
insert into Notas (id, titulo, descripcion, fecha_creacion, fecha_modificacion, eliminar, categoria_id, usuario_id) values (8, 'Howe', 'El Lorem Ipsum fue concebido como un texto de relleno, formateado de una cierta manera para permitir la presentación de elementos gráficos en documentos, sin necesidad de una copia formal. El uso de Lorem Ipsum permite a los diseñadores reunir los diseños y la forma del contenido antes de que el contenido se haya creado, dando al diseño y al proceso de producción más libertad.', '2021-03-10', '2022-05-25', false, 8, 8);
insert into Notas (id, titulo, descripcion, fecha_creacion, fecha_modificacion, eliminar, categoria_id, usuario_id) values (9, 'Daugherty', 'El Lorem Ipsum fue concebido como un texto de relleno, formateado de una cierta manera para permitir la presentación de elementos gráficos en documentos, sin necesidad de una copia formal. El uso de Lorem Ipsum permite a los diseñadores reunir los diseños y la forma del contenido antes de que el contenido se haya creado, dando al diseño y al proceso de producción más libertad.', '2021-01-10', '2022-01-16', false, 9, 9);
insert into Notas (id, titulo, descripcion, fecha_creacion, fecha_modificacion, eliminar, categoria_id, usuario_id) values (10, 'Hammes', 'El Lorem Ipsum fue concebido como un texto de relleno, formateado de una cierta manera para permitir la presentación de elementos gráficos en documentos, sin necesidad de una copia formal. El uso de Lorem Ipsum permite a los diseñadores reunir los diseños y la forma del contenido antes de que el contenido se haya creado, dando al diseño y al proceso de producción más libertad.', '2021-05-19', '2021-11-20', true, 10, 10);
