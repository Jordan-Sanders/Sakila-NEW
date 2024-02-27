CREATE TABLE `rental` (
  `rental_id` INT NOT NULL AUTO_INCREMENT,
  `rental_date` DATETIME NOT NULL,
  `inventory_id` MEDIUMINT UNSIGNED NOT NULL,
  `customer_id` SMALLINT UNSIGNED NOT NULL,
  `return_date` DATETIME DEFAULT NULL,
  `staff_id` TINYINT UNSIGNED NOT NULL,
  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (rental_id)
)
ENGINE = MYISAM,
CHARACTER SET utf8mb4,
CHECKSUM = 0,
COLLATE utf8mb4_unicode_ci;

ALTER TABLE `rental` 
  ADD UNIQUE INDEX rental_date(rental_date, inventory_id, customer_id);

ALTER TABLE `rental` 
  ADD INDEX idx_fk_customer_id(customer_id);

ALTER TABLE `rental` 
  ADD INDEX idx_fk_inventory_id(inventory_id);

ALTER TABLE `rental` 
  ADD INDEX idx_fk_staff_id(staff_id);