CREATE TABLE `payment` (
  `payment_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` SMALLINT UNSIGNED NOT NULL,
  `staff_id` TINYINT UNSIGNED NOT NULL,
  `rental_id` INT DEFAULT NULL,
  `amount` DECIMAL(5, 2) NOT NULL,
  `payment_date` DATETIME NOT NULL,
  `last_update` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (payment_id)
)
ENGINE = MYISAM,
CHARACTER SET utf8mb4,
CHECKSUM = 0,
COLLATE utf8mb4_unicode_ci;

ALTER TABLE `payment` 
  ADD INDEX idx_fk_customer_id(customer_id);

ALTER TABLE `payment` 
  ADD INDEX idx_fk_staff_id(staff_id);

ALTER TABLE `payment` 
  ADD INDEX fk_payment_rental(rental_id);