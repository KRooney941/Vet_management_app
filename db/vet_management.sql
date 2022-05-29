PRAGMA FOREIGN_KEYS = ON;

DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS vets;

CREATE TABLE vets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR
);

CREATE TABLE animals (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR,
    type VARCHAR,
    dob VARCHAR,
    age VARCHAR,
    owner VARCHAR,
    owner_tel VARCHAR,
    owner_email VARCHAR,
    notes TEXT,
    vet_id INTEGER NOT NULL,
        FOREIGN KEY (vet_id)
         REFERENCES vets (id)
);