use compta;

Create table
    IF not exists article (
        ID int (11),
        REF varchar(13),
        DESIGNATION varchar(255),
        PRIX decimal(7, 2),
        ID_FOU int (11)
    );

Create table
    if not exists fournisseur (id int (11), Nom varchar(25));

Create table
    if not exists bon (
        ID int (11),
        NUMERO int (11),
        DATE_CMDE datetime,
        DELAI int (11),
        ID_FOU int (11)
    );

Create table
    if not exists compo (
        ID int (11),
        ID_ART int (11),
        ID_BON int (11),
        QTE int (11)
    );