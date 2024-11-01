﻿CREATE TABLE `film_category` (
  `film_id` SMALLINT(5) UNSIGNED NOT NULL,
  `category_id` TINYINT(3) UNSIGNED NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (film_id, category_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_unicode_ci;

ALTER TABLE `film_category` 
  ADD CONSTRAINT `fk_film_category_category` FOREIGN KEY (category_id)
    REFERENCES category(category_id) ON UPDATE CASCADE;

ALTER TABLE `film_category` 
  ADD CONSTRAINT `fk_film_category_film` FOREIGN KEY (film_id)
    REFERENCES film(film_id) ON UPDATE CASCADE;