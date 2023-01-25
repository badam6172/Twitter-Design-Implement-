-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema twitter
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema twitter
-- -----------------------------------------------------
#CREATE SCHEMA IF NOT EXISTS `twitter` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `twitter` ;
Drop Database If exists twitter;
create database twitter; 
use twitter;
use twitter;
-- -----------------------------------------------------
-- Table `twitter`.`users`
-- -----------------------------------------------------
CREATE TABLE `users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(40) CHARACTER SET 'utf16' COLLATE 'utf16_unicode_ci' NOT NULL,
  `email` VARCHAR(255) CHARACTER SET 'utf16' COLLATE 'utf16_unicode_ci' NOT NULL,
  `password` VARCHAR(32) CHARACTER SET 'utf16' COLLATE 'utf16_unicode_ci' NOT NULL,
  `name` VARCHAR(40) CHARACTER SET 'utf16' COLLATE 'utf16_unicode_ci' NOT NULL,
  `bio` VARCHAR(140) CHARACTER SET 'utf16' COLLATE 'utf16_unicode_ci' NOT NULL DEFAULT '',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 59
DEFAULT CHARACTER SET = utf16
COLLATE = utf16_unicode_ci;


-- -----------------------------------------------------
-- Table `twitter`.`posts`
-- -----------------------------------------------------
CREATE TABLE `posts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `post_on` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id` (`user_id` ASC) VISIBLE,
  CONSTRAINT `posts_ibfk_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `twitter`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 726
DEFAULT CHARACTER SET = utf16
COLLATE = utf16_unicode_ci;


-- -----------------------------------------------------
-- Table `twitter`.`comments`
-- -----------------------------------------------------
CREATE TABLE `comments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(140) CHARACTER SET 'utf16' COLLATE 'utf16_unicode_ci' NOT NULL,
  `user_id` INT NOT NULL,
  `post_id` INT NOT NULL,
  `time` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `post_id` (`post_id` ASC) VISIBLE,
  INDEX `user_id` (`user_id` ASC) VISIBLE,
  CONSTRAINT `comments_ibfk_1`
    FOREIGN KEY (`post_id`)
    REFERENCES `twitter`.`posts` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `comments_ibfk_2`
    FOREIGN KEY (`user_id`)
    REFERENCES `twitter`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 46
DEFAULT CHARACTER SET = utf16
COLLATE = utf16_unicode_ci;


-- -----------------------------------------------------
-- Table `twitter`.`follow`
-- -----------------------------------------------------
CREATE TABLE `follow` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `follower_id` INT NOT NULL,
  `following_id` INT NOT NULL,
  `time` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `follower_id` (`follower_id` ASC) VISIBLE,
  INDEX `following_id` (`following_id` ASC) VISIBLE,
  CONSTRAINT `follow_ibfk_1`
    FOREIGN KEY (`follower_id`)
    REFERENCES `twitter`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `follow_ibfk_2`
    FOREIGN KEY (`following_id`)
    REFERENCES `twitter`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 136
DEFAULT CHARACTER SET = utf16
COLLATE = utf16_unicode_ci;


-- -----------------------------------------------------
-- Table `twitter`.`likes`
-- -----------------------------------------------------
CREATE TABLE `likes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `post_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id` (`user_id` ASC) VISIBLE,
  INDEX `likes_ibfk_2` (`post_id` ASC) VISIBLE,
  CONSTRAINT `likes_ibfk_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `twitter`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `likes_ibfk_2`
    FOREIGN KEY (`post_id`)
    REFERENCES `twitter`.`posts` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 228
DEFAULT CHARACTER SET = utf16
COLLATE = utf16_unicode_ci;

-- -----------------------------------------------------
-- Table `twitter`.`Credentials`
-- -----------------------------------------------------
CREATE TABLE `Credentials` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(140) NOT NULL,
  `user_password` VARCHAR(100) NOT NULL,
  `mailid` VARCHAR(120) NOT NULL,
  `mobilenumber` INT NULL,
  `otp` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `comment_id` (`username` ASC) VISIBLE,
  INDEX `user_id` (`user_password` ASC) VISIBLE,
  CONSTRAINT `replies_ibfk_1`
    FOREIGN KEY (`username`)
    REFERENCES `twitter`.`comments` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `replies_ibfk_2`
    FOREIGN KEY (`user_password`)
    REFERENCES `twitter`.`users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf16
COLLATE = utf16_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
