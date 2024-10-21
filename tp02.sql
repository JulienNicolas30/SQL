use compta; 

INSERT INTO fournisseur (NOM) values ("Française d'imports"),
("FDM SA"),
("Dubois et Fils");

INSERT INTO ARTICLE (REF, DESIGNATION, PRIX, ID_FOU) 
VALUES 
('A01', 'Perceuse P1', 74.99, 1),
('F01', 'Boulon laiton 4 x 40 mm (sachet de 10)', 2.25, 2),
('F02', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.45, 2),
('D01', 'Boulon laiton 5 x 40 mm (sachet de 10)', 4.40, 3),
('A02', 'Meuleuse 125mm', 37.85, 1),
('D03', 'Boulon acier zingué 4 x 40mm (sachet de 10)', 1.80, 3),
('A03', 'Perceuse à colonne', 185.25, 1),
('D04', 'Coffret mêches à bois', 12.25, 3),
('F03', 'Coffret mêches plates', 6.25, 2),
( 'F04', 'Fraises d''encastrement', 8.14, 2);

insert into bon (numero, delai,id_fou) values ("001",3,1);

insert into compo (qte,id_art,id_bon) values
(3,1,1),
(4,5,1),
(1,7,1);

