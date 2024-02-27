﻿CREATE TABLE `film_actor` (
  `actor_id` SMALLINT UNSIGNED NOT NULL,
  `film_id` SMALLINT UNSIGNED NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (actor_id, film_id)
)
ENGINE = MYISAM,
CHARACTER SET utf8mb4,
CHECKSUM = 0,
COLLATE utf8mb4_unicode_ci;

ALTER TABLE `film_actor` 
  ADD INDEX idx_fk_film_id(film_id);