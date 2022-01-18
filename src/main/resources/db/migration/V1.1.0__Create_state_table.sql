CREATE TABLE state (
  state_id SERIAL NOT NULL,
  name varchar(200) NOT NULL,
  country_id int4 NOT NULL,
  PRIMARY KEY (state_id)
);

ALTER TABLE state ADD CONSTRAINT state_country_fk FOREIGN KEY (country_id) REFERENCES country(country_id);

INSERT INTO state (name, country_id) VALUES('Alabama', 1);
INSERT INTO state (name, country_id) VALUES('Alaska', 1);
INSERT INTO state (name, country_id) VALUES('Arizona', 1);
INSERT INTO state (name, country_id) VALUES('Arkansas', 1);
INSERT INTO state (name, country_id) VALUES('California', 1);

INSERT INTO state (name, country_id) VALUES('Abrantes', 2);
INSERT INTO state (name, country_id) VALUES('Acores', 2);
INSERT INTO state (name, country_id) VALUES('Alentejo', 2);
INSERT INTO state (name, country_id) VALUES('Arkansas', 2);
INSERT INTO state (name, country_id) VALUES('Algarve', 2);

INSERT INTO state (name, country_id) VALUES('Acre', 3);
INSERT INTO state (name, country_id) VALUES('Alagoas', 3);
INSERT INTO state (name, country_id) VALUES('Amapa', 3);
INSERT INTO state (name, country_id) VALUES('Amazonas', 3);
INSERT INTO state (name, country_id) VALUES('Bahia', 3);
