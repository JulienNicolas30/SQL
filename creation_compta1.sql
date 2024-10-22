USE compta;

DROP TABLE IF EXISTS article;
CREATE TABLE IF NOT EXISTS article (
    id INT PRIMARY KEY,
    ref VARCHAR(50),
    designation VARCHAR(50),
    prix DECIMAL(6, 2),
    id_fou INT
);

DROP TABLE IF EXISTS fournisseur;
CREATE TABLE IF NOT EXISTS fournisseur (id INT PRIMARY KEY, nom VARCHAR(50));

DROP TABLE IF EXISTS bon;
CREATE TABLE IF NOT EXISTS bon (
    id INT PRIMARY KEY,
    numero INT,
    date_cmde DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    delai INT,
    id_fou INT
);

DROP TABLE IF EXISTS compo;
CREATE TABLE IF NOT EXISTS compo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_art INT,
    id_bon INT,
    qte INT
);

-- mettre la foreign key de Article
ALTER TABLE
    article
ADD
    CONSTRAINT FOREIGN KEY (id_fou) REFERENCES fournisseur(id);

-- mettre la foreign key de bon
ALTER TABLE
    bon
ADD
    CONSTRAINT FOREIGN KEY (id_fou) REFERENCES fournisseur(id);

-- mettre la foreign key de compo
ALTER TABLE
    compo
ADD
    CONSTRAINT FOREIGN KEY (id_art) REFERENCES article(id);

-- mettre la foreign key de compo
ALTER TABLE
    compo
ADD
    CONSTRAINT FOREIGN KEY (id_bon) REFERENCES bon(id);