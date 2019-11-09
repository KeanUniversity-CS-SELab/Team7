CREATE TABLE IF NOT EXISTS google_info (
symbol VARCHAR(5) NULL,
company_name VARCHAR(14) NULL,
exchange VARCHAR(6) NULL,
industry VARCHAR(26) NULL,
website VARCHAR(14) NULL,
description VARCHAR(585) NULL,
ceo VARCHAR(16) NULL,
security_name VARCHAR(21) NULL,
issue_type VARCHAR(2) NULL,
sector VARCHAR(19) NULL,
primary_sic_code INT NULL,
employees INT NULL,
tags VARCHAR(26) NULL,
address VARCHAR(25) NULL,
state VARCHAR(2) NULL,
city VARCHAR(13) NULL,
zip INT NULL,
country VARCHAR(2) NULL,
phone VARCHAR(14) NULL
);

INSERT INTO google_info VALUES
("GOOGL","Alphabet\, Inc.","NASDAQ","Internet Software/Services","http://abc.xyz","Alphabet\, Inc. is a holding company\, which engages in the business of acquisition and operation of different companies. It operates through the Google and Other Bets segments. The Google segment includes its main Internet products such as Ads\, Android\, Chrome\, Commerce\, Google Cloud\, Google Maps\, Google Play\, Hardware\, Search\, and YouTube. The Other Bets segment includes businesses such as Access\, Calico\, CapitalG\, GV\, Nest\, Verily\, Waymo\, and X. The company was founded by Lawrence E. Page and Sergey Mikhaylovich Brin on October 2\, 2015 and is headquartered in Mountain View\, CA.","Lawrence E. Page","Alphabet Inc. Class A","cs","Technology Services",7375,98771,"Technology Services","1600 Amphitheatre Parkway","CA","Mountain View",94043,"US","1.650.253.0000"),
(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,"Internet Software/Services",NULL,NULL,NULL,NULL,NULL,NULL);