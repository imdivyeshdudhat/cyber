/*12 June 2025*/

ALTER TABLE `accused_profiles` ADD `layer` VARCHAR(255) NULL DEFAULT NULL AFTER `case_id`, ADD `disputed_amount` DECIMAL(20,2) NULL AFTER `layer`;