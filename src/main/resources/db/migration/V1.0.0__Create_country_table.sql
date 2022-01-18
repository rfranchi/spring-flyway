CREATE TABLE country (
  country_id int4 NOT NULL,
  name varchar(200) NOT NULL,
  alpha2 varchar(2) NOT NULL,
  PRIMARY KEY (country_id)
);

CREATE INDEX country_alpha2_idx ON country USING btree (alpha2);

INSERT INTO country (country_id, name, alpha2) VALUES(1, 'United States of America', 'US');
INSERT INTO country (country_id, name, alpha2) VALUES(2, 'Portugal', 'PT');
INSERT INTO country (country_id, name, alpha2) VALUES(3, 'Brazil', 'BR');
