﻿CREATE TABLE `city` (
  `city_id` SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `city` VARCHAR(50) NOT NULL,
  `country_id` SMALLINT(5) UNSIGNED NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (city_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_unicode_ci;

ALTER TABLE `city` 
  ADD INDEX idx_fk_country_id(country_id);

ALTER TABLE `city` 
  ADD CONSTRAINT `fk_city_country` FOREIGN KEY (country_id)
    REFERENCES country(country_id) ON UPDATE CASCADE;