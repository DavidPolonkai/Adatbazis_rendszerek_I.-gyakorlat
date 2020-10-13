CREATE TABLE TANFOLYAM(
    TKOD INT PRIMARY KEY,
    AR INT CHECK(AR>0),
    TIPUS VARCHAR2(20),
    MEGNEVEZES VARCHAR2(100) UNIQUE
);
/

CREATE TABLE RESZTVEVO(
    TAJSZAM INT PRIMARY KEY,
    LAKCIM VARCHAR2(100),
    NEV VARCHAR2(100) NOT NULL
);
/

CREATE TABLE BEFIZETES(
    TKOD INT,
    TAJSZAM INT,
    BEFIZETES INT CHECK(BEFIZETES>0) NOT NULL, 
    FOREIGN KEY (TKOD) REFERENCES TANFOLYAM(TKOD),
    FOREIGN KEY (TAJSZAM) REFERENCES RESZTVEVO(TAJSZAM)
);
/