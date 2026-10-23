-- MySQL Workbench Synchronization
-- Generated: 2026-08-17 14:29
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Adolfo Oropeza

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `system_auth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;

CREATE TABLE IF NOT EXISTS `system_auth`.`settings` (
  `key` VARCHAR(50) NOT NULL,
  `value` VARCHAR(255) NOT NULL,
  `content` VARCHAR(100) NOT NULL,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`audit_log` (
  `audit_id` BIGINT(19) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` ENUM('DEBUG', 'INFO', 'NOTICE', 'WARNING', 'ERROR', 'CRITICAL', 'ALERT', 'EMERGENCY') NOT NULL DEFAULT 'ERROR',
  `message` JSON NULL DEFAULT NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`audit_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`customer` (
  `customer_id` BIGINT(19) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` VARCHAR(120) NOT NULL,
  `email` VARCHAR(120) NOT NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`),
  UNIQUE INDEX `uk_customer_email` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`category` (
  `category_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `short_description` VARCHAR(255) NULL DEFAULT NULL,
  `long_description` LONGTEXT NULL DEFAULT NULL,
  `media_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `is_active` TINYINT(4) NOT NULL DEFAULT 1,
  `slug` VARCHAR(120) NOT NULL,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`product` (
  `product_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(64) NOT NULL,
  `category_id` INT(10) UNSIGNED NOT NULL,
  `media_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `name` VARCHAR(150) NOT NULL,
  `short_description` VARCHAR(255) NULL DEFAULT NULL,
  `long_description` LONGTEXT NULL DEFAULT NULL,
  `price` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  `is_active` TINYINT(4) NULL DEFAULT 1,
  `slug` VARCHAR(120) NOT NULL,
  `agreement_id` INT(10) UNSIGNED NOT NULL,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`),
  UNIQUE INDEX `uk_product_sku` (`sku` ASC) VISIBLE,
  FULLTEXT INDEX `ft_product_search` (`name`, `short_description`, `long_description`) VISIBLE,
  INDEX `idx_product_category_id` (`category_id` ASC) VISIBLE,
  INDEX `fk_product_legal_agreement1_idx` (`agreement_id` ASC) VISIBLE,
  CONSTRAINT `fk_prod_category`
    FOREIGN KEY (`category_id`)
    REFERENCES `system_auth`.`category` (`category_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_product_legal_agreement1`
    FOREIGN KEY (`agreement_id`)
    REFERENCES `system_auth`.`legal_agreement` (`agreement_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`media` (
  `media_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_path` VARCHAR(255) NOT NULL,
  `alt_text` VARCHAR(150) NULL DEFAULT NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`media_id`),
  UNIQUE INDEX `media_id_UNIQUE` (`media_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`legal_agreement` (
  `agreement_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(150) NOT NULL,
  `version` VARCHAR(20) NOT NULL,
  `content` LONGTEXT NOT NULL,
  `is_active` TINYINT(4) NULL DEFAULT 1,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`agreement_id`),
  UNIQUE INDEX `uk_terms_version` (`title` ASC, `version` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`orders` (
  `order_id` BIGINT(19) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` BIGINT(19) UNSIGNED NOT NULL,
  `increment_id` INT(10) UNSIGNED NOT NULL,
  `total_usd` DECIMAL(10,2) NOT NULL,
  `exchange_rate` DECIMAL(12,4) NOT NULL DEFAULT 1.0000,
  `currency` VARCHAR(10) NOT NULL DEFAULT 'USD',
  `state` VARCHAR(32) NOT NULL DEFAULT 'new',
  `status` VARCHAR(32) NOT NULL DEFAULT 'pending',
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  INDEX `idx_orders_state_status` (`state` ASC, `status` ASC) VISIBLE,
  INDEX `idx_orders_created_at` (`created_at` ASC) VISIBLE,
  UNIQUE INDEX `un_increment_id` (`increment_id` ASC) VISIBLE,
  INDEX `idx_increment_id` (`increment_id` ASC) VISIBLE,
  INDEX `fk_orders_customer1_idx` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_customer1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `system_auth`.`customer` (`customer_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`order_item` (
  `order_item_id` BIGINT(19) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` BIGINT(19) UNSIGNED NOT NULL,
  `product_id` INT(10) UNSIGNED NOT NULL,
  `price_usd` DECIMAL(10,2) NOT NULL,
  `quantity` INT(10) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`order_item_id`),
  INDEX `idx_order_item_order_id` (`order_id` ASC) VISIBLE,
  INDEX `idx_order_item_product_id` (`product_id` ASC) VISIBLE,
  CONSTRAINT `fk_item_order`
    FOREIGN KEY (`order_id`)
    REFERENCES `system_auth`.`orders` (`order_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_item_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `system_auth`.`product` (`product_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`payment_method` (
  `payment_method_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `code` VARCHAR(30) NOT NULL,
  `is_active` TINYINT(4) NULL DEFAULT 1,
  PRIMARY KEY (`payment_method_id`),
  UNIQUE INDEX `uk_payment_method_code` (`code` ASC) VISIBLE,
  UNIQUE INDEX `uk_payment_method_name` (`name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`payment_transaction` (
  `transaction_id` BIGINT(19) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` BIGINT(19) UNSIGNED NOT NULL,
  `payment_method_id` INT(10) UNSIGNED NOT NULL,
  `amount` DECIMAL(12,2) NOT NULL,
  `currency` VARCHAR(10) NOT NULL,
  `status` ENUM('pending', 'verified', 'rejected', 'completed') NULL DEFAULT 'pending',
  `reference_number` VARCHAR(100) NULL DEFAULT NULL,
  `receipt_image_path` VARCHAR(255) NULL DEFAULT NULL,
  `gateway_response` JSON NULL DEFAULT NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`transaction_id`),
  INDEX `idx_transaction_order_id` (`order_id` ASC) VISIBLE,
  INDEX `idx_transaction_method_id` (`payment_method_id` ASC) VISIBLE,
  INDEX `idx_transaction_reference` (`reference_number` ASC) VISIBLE,
  INDEX `idx_transaction_status` (`status` ASC) VISIBLE,
  CONSTRAINT `fk_trans_order`
    FOREIGN KEY (`order_id`)
    REFERENCES `system_auth`.`orders` (`order_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_trans_method`
    FOREIGN KEY (`payment_method_id`)
    REFERENCES `system_auth`.`payment_method` (`payment_method_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`auth_token` (
  `token_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` BIGINT(19) UNSIGNED NOT NULL,
  `token_hash` VARCHAR(128) NOT NULL,
  `purpose` ENUM('api', 'composer') NOT NULL,
  `expires_at` DATETIME NULL DEFAULT NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`token_id`),
  UNIQUE INDEX `uk_auth_token_hash` (`token_hash` ASC) VISIBLE,
  INDEX `idx_auth_token_purpose` (`purpose` ASC) VISIBLE,
  INDEX `fk_auth_token_customer1_idx` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_auth_token_customer1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `system_auth`.`customer` (`customer_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`cart` (
  `cart_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_cart` JSON NULL DEFAULT NULL,
  `is_active` TINYINT(4) NULL DEFAULT 1,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cart_id`),
  UNIQUE INDEX `cart_id_UNIQUE` (`cart_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`admin` (
  `admin_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` VARCHAR(120) NOT NULL,
  `email` VARCHAR(120) NOT NULL,
  `password` VARCHAR(120) NOT NULL,
  `is_active` TINYINT(4) NULL DEFAULT 1,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_id`),
  UNIQUE INDEX `admin_id_UNIQUE` (`admin_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`order_legal_acceptance` (
  `acceptance_id` BIGINT(19) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` BIGINT(19) UNSIGNED NOT NULL,
  `product_id` INT(10) UNSIGNED NOT NULL,
  `agreement_id` INT(10) UNSIGNED NOT NULL,
  `accepted_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX `fk_order_legal_acceptance_orders1_idx` (`order_id` ASC) VISIBLE,
  INDEX `fk_order_legal_acceptance_product1_idx` (`product_id` ASC) VISIBLE,
  INDEX `fk_order_legal_acceptance_legal_agreement1_idx` (`agreement_id` ASC) VISIBLE,
  PRIMARY KEY (`acceptance_id`),
  UNIQUE INDEX `acceptance_id_UNIQUE` (`acceptance_id` ASC) VISIBLE,
  CONSTRAINT `fk_order_legal_acceptance_orders1`
    FOREIGN KEY (`order_id`)
    REFERENCES `system_auth`.`orders` (`order_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_order_legal_acceptance_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `system_auth`.`product` (`product_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_order_legal_acceptance_legal_agreement1`
    FOREIGN KEY (`agreement_id`)
    REFERENCES `system_auth`.`legal_agreement` (`agreement_id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `system_auth`.`seo_metadata` (
  `seo_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `canonical_url` VARCHAR(255) NULL DEFAULT NULL,
  `meta_title` VARCHAR(60) NULL DEFAULT NULL,
  `meta_description` VARCHAR(160) NULL DEFAULT NULL,
  `type` ENUM('P', 'C') NULL DEFAULT NULL,
  `prod_cat_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `og_title` VARCHAR(60) NULL DEFAULT NULL,
  `og_description` VARCHAR(160) NULL DEFAULT NULL,
  `og_image` INT(10) UNSIGNED NULL DEFAULT NULL,
  `is_indexable` TINYINT(4) NOT NULL DEFAULT 1,
  `updated_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`seo_id`),
  UNIQUE INDEX `seo_id_UNIQUE` (`seo_id` ASC) VISIBLE,
  INDEX `uk_seo_entity_type` (`prod_cat_id` ASC, `type` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

