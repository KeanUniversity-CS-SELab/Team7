CREATE TABLE IF NOT EXISTS rfem_info (
symbol VARCHAR(4) NULL,
company_name VARCHAR(51) NULL,
exchange VARCHAR(6) NULL,
industry VARCHAR(30) NULL,
website VARCHAR(0) NULL,
description VARCHAR(0) NULL,
ceo VARCHAR(0) NULL,
security_name VARCHAR(51) NULL,
issue_type VARCHAR(2) NULL,
sector VARCHAR(13) NULL,
primary_sic_code INT NULL,
tags VARCHAR(30) NULL
);

INSERT INTO rfem_info VALUES
("RFEM","First Trust Riverfront Dynamic Emerging Markets ETF","NASDAQ","Investment Trusts/Mutual Funds","","","","First Trust Riverfront Dynamic Emerging Markets ETF","et","Miscellaneous",6722,"Miscellaneous"),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,"Investment Trusts/Mutual Funds");