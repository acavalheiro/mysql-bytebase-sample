﻿CREATE TABLE Address (
  AddressId INT UNSIGNED NOT NULL AUTO_INCREMENT,
  Adress VARCHAR(255) DEFAULT NULL,
  City VARCHAR(255) DEFAULT NULL,
  UserID VARCHAR(255) NOT NULL,
  PRIMARY KEY (AddressId)
)
ENGINE = INNODB;


ALTER TABLE Address 
  ADD CONSTRAINT FK_Address_UserID FOREIGN KEY (UserID)
    REFERENCES user(UserId) ON DELETE NO ACTION;