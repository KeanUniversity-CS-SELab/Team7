CREATE TABLE IF NOT EXISTS apple_info (
symbol VARCHAR(4) NULL,
company_name VARCHAR(11) NULL,
exchange VARCHAR(6) NULL,
industry VARCHAR(28) NULL,
website VARCHAR(20) NULL,
description VARCHAR(989) NULL,
ceo VARCHAR(19) NULL,
security_name VARCHAR(10) NULL,
issue_type VARCHAR(2) NULL,
sector VARCHAR(21) NULL,
primary_sic_code INT NULL,
employees INT NULL,
tags VARCHAR(28) NULL,
address VARCHAR(18) NULL,
state VARCHAR(2) NULL,
city VARCHAR(9) NULL,
zip VARCHAR(10) NULL,
country VARCHAR(2) NULL,
phone VARCHAR(14) NULL
);

INSERT INTO apple_info VALUES
("AAPL","Apple\, Inc.","NASDAQ","Telecommunications Equipment","http://www.apple.com","Apple\, Inc. engages in designing\, manufacturing\, and marketing of mobile communication\, media devices\, personal computers\, and portable digital music players. It operates through the following geographical segments: Americas\, Europe\, Greater China\, Japan\, and Rest of Asia Pacific. The Americas segment includes North and South America. The Europe segment consists of European countries\, as well as India\, the Middle East\, and Africa. The Greater China segment comprises of China\, Hong Kong\, and Taiwan. The Rest of Asia Pacific segment includes Australia and Asian countries. Its products and services include iPhone\, iPad\, Mac\, iPod\, Apple Watch\, Apple TV\, a portfolio of consumer and professional software applications\, iPhone OS (iOS)\, OS X and watchOS operating systems\, iCloud\, Apple Pay and a range of accessory\, service and support offerings. Apple was founded by Steven Paul Jobs\, Ronald Gerald Wayne\, and Stephen G. Wozniak on April 1\, 1976 and is headquartered in Cupertino\, CA.","Timothy Donald Cook","Apple Inc.","cs","Electronic Technology",3663,132000,"Electronic Technology","One Apple Park Way","CA","Cupertino","95014-2083","US","1.408.974.3123"),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,"Telecommunications Equipment",NULL,NULL,NULL,NULL,NULL,NULL);