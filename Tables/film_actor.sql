CREATE TABLE `film_actor` (
  `actor_id` SMALLINT(5) UNSIGNED NOT NULL,
  `film_id` SMALLINT(5) UNSIGNED NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (actor_id, film_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_unicode_ci;

ALTER TABLE `film_actor` 
  ADD INDEX idx_fk_film_id(film_id);

ALTER TABLE `film_actor` 
  ADD CONSTRAINT `fk_film_actor_actor` FOREIGN KEY (actor_id)
    REFERENCES actor(actor_id) ON UPDATE CASCADE;

ALTER TABLE `film_actor` 
  ADD CONSTRAINT `fk_film_actor_film` FOREIGN KEY (film_id)
    REFERENCES film(film_id) ON UPDATE CASCADE;