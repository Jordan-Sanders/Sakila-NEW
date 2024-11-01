﻿CREATE TABLE `payment` (
  `payment_id` SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` SMALLINT(5) UNSIGNED NOT NULL,
  `staff_id` TINYINT(3) UNSIGNED NOT NULL,
  `rental_id` INT(11) DEFAULT NULL,
  `amount` DECIMAL(5, 2) NOT NULL,
  `payment_date` DATETIME NOT NULL,
  `last_update` TIMESTAMP NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (payment_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_unicode_ci;

ALTER TABLE `payment` 
  ADD INDEX idx_fk_customer_id(customer_id);

ALTER TABLE `payment` 
  ADD INDEX idx_fk_staff_id(staff_id);

ALTER TABLE `payment` 
  ADD CONSTRAINT `fk_payment_customer` FOREIGN KEY (customer_id)
    REFERENCES customer(customer_id) ON UPDATE CASCADE;

ALTER TABLE `payment` 
  ADD CONSTRAINT `fk_payment_rental` FOREIGN KEY (rental_id)
    REFERENCES rental(rental_id) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE `payment` 
  ADD CONSTRAINT `fk_payment_staff` FOREIGN KEY (staff_id)
    REFERENCES staff(staff_id) ON UPDATE CASCADE;