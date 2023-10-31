IF EXISTS(SELECT 1 FROM sys.tables WHERE object_id = OBJECT_ID('Employees'))
BEGIN;
    DROP TABLE [Employees];
END;
GO

CREATE TABLE [Employees] (
    [Id] INTEGER NOT NULL IDENTITY(1, 1),
    [Firstname] VARCHAR(255) NULL,
    [Lastname] VARCHAR(255) NULL,
    [PhoneNumber] VARCHAR(100) NULL,
    [Email] VARCHAR(255) NULL,
    [BirthDate] DATE,
    [Department] VARCHAR(255) NULL,
    [Address] VARCHAR(255) NULL,
    [Salary] DECIMAL(5,1) NULL,
    PRIMARY KEY ([Id])
);
GO

INSERT INTO [Employees] (Firstname,Lastname,PhoneNumber,Email,BirthDate,Department,Address,Salary)
VALUES
  ('Zephania','Kramer','(0426) 33638659','ut.cursus@google.com','05/05/1994','Advertising','P.O. Box 825, 4722 Leo. Ave',5072),
  ('Cailin','Hayden','(037552) 493832','amet@outlook.edu','04/05/1962','Sales and Marketing','P.O. Box 989, 3352 Duis Road',8550),
  ('Kennan','Mcgowan','(0952) 49255492','sem.egestas@protonmail.net','08/24/1986','Quality Assurance','4811 Ullamcorper Road',4678),
  ('Rose','Calderon','(01311) 7785044','quisque@google.org','06/09/1993','Accounting','190-153 Odio St.',5800),
  ('Montana','O''brien','(080) 36345534','ac@hotmail.ca','02/21/1994','Tech Support','476-7877 Urna Rd.', NULL),
  ('Hayden','Wells','(021) 41284220','aliquam.ornare@protonmail.couk','03/18/1970','Research and Development','143-5097 Euismod Rd.',9204),
  ('Latifah','Richmond','(02162) 6309379','sagittis.augue@aol.net','12/16/1996','Payroll','3786 Egestas St.',7703),
  ('Stuart','Hansen','(0954) 45562472','nec.urna@hotmail.com','07/07/1990','Asset Management','P.O. Box 287, 9081 Cum Rd.',4064),
  ('Blaze','Steele','(03649) 0679363','diam.eu@yahoo.com','04/28/1976','Advertising','Ap #456-9978 Quis, Avenue',6786),
  ('Denton','Kelley','(0845) 93169814','elit.fermentum@google.edu','09/30/1996','Customer Relations','3499 Felis. Ave',9874);
INSERT INTO [Employees] (Firstname,Lastname,PhoneNumber,Email,BirthDate,Department,Address,Salary)
VALUES
  ('Randall','Lawrence','(036768) 237346','non.enim@hotmail.ca','12/09/1981','Sales and Marketing','P.O. Box 574, 6383 Nec Road',3688),
  ('Ivan','Peters','(062) 28876467','sit.amet.dapibus@hotmail.edu','05/24/2001','Finances','871-4499 Lacus. Rd.',9213),
  ('Angelica','Erickson','(018) 52787388','cursus.et.magna@yahoo.couk','01/02/1988','Legal Department','332-5741 Eget Rd.',6074),
  ('Tarik','Rivas','(059) 17795881','eu.tempor@outlook.edu','12/31/1994','Sales and Marketing','P.O. Box 457, 2075 Arcu. Ave',9981),
  ('Odysseus','Fisher','(057) 76964662','ut.pellentesque@outlook.ca','01/29/1986','Advertising','8500 Dolor Street',5092),
  ('Rana','Holden','(038274) 746007','vulputate.velit.eu@yahoo.com','11/09/1963','Customer Service','957-8314 Hymenaeos. St.',3578),
  ('Tasha','Vinson','(035535) 418852','cum.sociis@outlook.net','06/02/2005','Tech Support','499-7821 Enim, Rd.',7011),
  ('Colby','Crane','(037862) 083818','auctor.quis.tristique@hotmail.ca','05/20/1986','Tech Support','Ap #177-7655 Eu, Ave',9586),
  ('Aidan','Blake','(0610) 25750062','molestie.dapibus@yahoo.net','10/17/1980','Legal Department','Ap #761-2231 Facilisis. Street',5997),
  ('Tana','Mccray','(0887) 19309464','dui.in.sodales@outlook.couk','02/19/1977','Finances','9833 Sit Rd.',9488);
INSERT INTO [Employees] (Firstname,Lastname,PhoneNumber,Email,BirthDate,Department,Address,Salary)
VALUES
  ('Fallon','Lynch','(08363) 8769132','consectetuer.adipiscing@icloud.ca','10/05/1986','Asset Management','403-6307 Phasellus Street',6504),
  ('Kalia','Moran','(0608) 71711324','sociosqu.ad@hotmail.org','06/11/1970','Finances','Ap #750-3338 Tellus Ave',3084),
  ('Jolene','Norman','(02148) 9674693','ligula.aenean.gravida@google.com','01/14/1974','Legal Department','658-8756 Laoreet St.',2944),
  ('Natalie','Mcmahon','(046) 85825168','ac.mattis@google.com','10/17/1983','Legal Department','P.O. Box 846, 8105 Non Rd.',2378),
  ('Hammett','Owen','(038) 98458932','ultrices.vivamus@icloud.com','08/03/1989','Payroll','822-1773 Nisl Street',9063),
  ('Curran','Lewis','(036782) 187517','dolor.sit@icloud.couk','07/23/1964','Sales and Marketing','496 Pretium Av.',5598),
  ('Anjolie','Wilcox','(0221) 78850391','vehicula@hotmail.ca','05/10/1995','Accounting','706-547 Suspendisse Rd.',7484),
  ('Walker','Daugherty','(0425) 96474147','vestibulum@hotmail.org','04/17/1980','Customer Relations','823-5657 Ipsum Rd.',3884),
  ('Kathleen','Abbott','(0694) 82615825','nonummy.ultricies.ornare@protonmail.org','11/16/1975','Tech Support','Ap #784-5533 Cras Rd.',4607),
  ('Graham','Hale','(036153) 361488','consequat.purus@icloud.org','02/16/1998','Payroll','9609 Dis Avenue',5778);
INSERT INTO [Employees] (Firstname,Lastname,PhoneNumber,Email,BirthDate,Department,Address,Salary)
VALUES
  ('Aaron','Small','(01089) 8546870','dictum@aol.ca','03/25/1987','Customer Relations','590-8305 Quisque Street',NULL),
  ('Ori','Wilcox','(090) 48452184','enim@icloud.com','10/03/2001','Finances','6989 Accumsan St.',3712),
  ('Harrison','Mann','(037013) 887326','taciti.sociosqu@outlook.com','09/07/1968','Research and Development','859-3044 Lobortis Road',9118),
  ('Lareina','Rutledge','(0063) 80219120','nascetur.ridiculus@hotmail.couk','07/16/1972','Accounting','577-6966 Non, Av.',9793),
  ('Vivien','Garrett','(0724) 41332711','purus.duis@google.com','01/21/1987','Advertising','Ap #729-460 Sed Rd.',9094),
  ('Ezekiel','Park','(03413) 1196692','auctor.quis@outlook.net','09/10/1980','Customer Relations','P.O. Box 735, 5720 Nec, St.',3878),
  ('Phyllis','Gay','(031817) 413466','congue.a.aliquet@protonmail.net','11/04/1991','Payroll','775-7105 Curabitur St.',2211),
  ('Felix','Ramsey','(06977) 5330755','ultrices@google.ca','08/08/1995','Payroll','P.O. Box 931, 6317 Aliquet. Rd.',6534),
  ('Damon','Moran','(066) 82735768','lorem.vitae@yahoo.org','02/06/1992','Customer Service','318-5155 Pellentesque Rd.',4080),
  ('Joshua','Chapman','(06132) 7837134','gravida.sit.amet@aol.org','07/01/1969','Payroll','P.O. Box 658, 1875 Mi Ave',6612);
INSERT INTO [Employees] (Firstname,Lastname,PhoneNumber,Email,BirthDate,Department,Address,Salary)
VALUES
  ('Uta','Flores','(036318) 551152','vitae.mauris@aol.com','03/03/1961','Finances','P.O. Box 705, 341 Nulla Ave',6350),
  ('Harper','Ware','(094) 49436895','aenean.gravida@hotmail.com','05/11/1985','Accounting','715-2163 Dolor Road',4042),
  ('Nasim','Wynn','(03419) 8110235','lectus.convallis@yahoo.net','12/29/1997','Human Resources','960-4258 In Road',5935),
  ('Ivan','Suarez','(019) 23629560','scelerisque.neque.nullam@google.couk','10/17/1976','Asset Management','637-8042 Nonummy Avenue',6206),
  ('MacKensie','Lloyd','(007) 15786173','euismod.in@icloud.com','12/22/1998','Asset Management','236-5383 Pede Road',5103),
  ('Basia','Farley','(0182) 94667765','egestas.a@icloud.org','02/05/1972','Asset Management','Ap #298-5024 Lacus. Rd.',8136),
  ('Sean','Hatfield','(035) 02585730','phasellus.in.felis@outlook.couk','04/08/1989','Customer Relations','P.O. Box 545, 8760 A, Av.',4824),
  ('Sigourney','Valenzuela','(047) 75762649','quis.tristique@google.org','03/17/1984','Payroll','Ap #382-2630 Mauris Av.',9730),
  ('Donovan','Newton','(0667) 85181848','luctus.lobortis@protonmail.net','09/20/1992','Tech Support','185-967 Massa Ave',7816),
  ('Laura','Barber','(071) 27277933','libero.proin.sed@icloud.org','06/22/2004','Quality Assurance','1021 Est Street',8228);
INSERT INTO [Employees] (Firstname,Lastname,PhoneNumber,Email,BirthDate,Department,Address,Salary)
VALUES
  ('Uta','Fry','(07687) 5547703','feugiat.sed@protonmail.org','11/04/1980','Quality Assurance','3432 Sit Ave',3792),
  ('Signe','Maddox','(012) 64623367','netus.et.malesuada@protonmail.ca','08/14/1981','Finances','4278 Nulla St.',7591),
  ('Charity','Cabrera','(038420) 705253','mauris.elit@protonmail.edu','09/09/1964','Customer Service','P.O. Box 574, 555 Egestas. Road',6652),
  ('Joshua','Andrews','(01352) 2545509','morbi.sit@outlook.org','04/03/1967','Asset Management','462-3600 Nascetur Rd.',NULL),
  ('Teegan','Cervantes','(04858) 5243528','aliquet.diam.sed@icloud.org','11/18/1989','Finances','P.O. Box 435, 7631 Amet Road',7173),
  ('Germane','Cooper','(038411) 515201','nulla.tempor@aol.com','01/26/1997','IT','P.O. Box 761, 4167 Placerat Street',9766),
  ('Kameko','Goodman','(034622) 854347','velit.cras@aol.org','12/18/1996','Legal Department','Ap #787-7238 Nisi Ave',3194),
  ('Evelyn','Cole','(0257) 00602654','aliquet@icloud.net','12/16/2002','Accounting','988-3252 Neque Road',8749),
  ('Alexandra','Koch','(034155) 976852','vestibulum.ante.ipsum@hotmail.org','02/06/1993','Advertising','475-7447 Purus, Rd.',3637),
  ('Geraldine','Bates','(026) 03384787','vulputate.ullamcorper.magna@yahoo.net','06/28/2002','Legal Department','Ap #267-4507 Parturient St.',8912);
INSERT INTO [Employees] (Firstname,Lastname,PhoneNumber,Email,BirthDate,Department,Address,Salary)
VALUES
  ('Benedict','Faulkner','(04685) 1525787','a@protonmail.org','12/13/1976','Accounting','P.O. Box 846, 2018 Mauris St.',8528),
  ('Amir','Porter','(076) 76150491','sodales.purus.in@outlook.couk','04/01/2001','Tech Support','356-9919 Dictum Road',5791),
  ('Grady','Davenport','(036078) 484864','lacinia@protonmail.couk','06/22/1998','Accounting','473 Dictum Ave',3778),
  ('David','Warner','(039518) 689667','luctus.et@outlook.net','01/12/2004','Human Resources','507-8316 Magnis St.',2331),
  ('Vera','Sanchez','(037480) 409596','phasellus@outlook.ca','08/15/1963','Asset Management','Ap #195-9939 Nunc St.',7622),
  ('Pearl','Goff','(031239) 406185','parturient@hotmail.org','04/14/1965','Customer Relations','Ap #731-2211 Dictum Road',2383),
  ('Tyler','Mendez','(018) 76267361','nisi.mauris.nulla@google.org','06/29/1977','Finances','Ap #567-4097 Ultrices St.',3723),
  ('Hyatt','Brennan','(088) 44383820','sed.nec.metus@yahoo.org','12/09/1977','Quality Assurance','Ap #390-7144 Nunc Rd.',6421),
  ('Jared','Palmer','(031268) 272723','fringilla.cursus.purus@protonmail.net','10/30/1990','Customer Relations','6277 Justo Av.',5243),
  ('Wendy','Rodriquez','(044) 84948334','quam.pellentesque@yahoo.couk','11/03/2004','Human Resources','917-2838 Cubilia St.',9309);
INSERT INTO [Employees] (Firstname,Lastname,PhoneNumber,Email,BirthDate,Department,Address,Salary)
VALUES
  ('Sylvia','Short','(077) 43430761','id.risus@outlook.couk','08/20/1999','Tech Support','344-5748 Parturient Avenue',8962),
  ('Farrah','Simmons','(0159) 87645029','volutpat.nulla@google.ca','01/10/1977','Payroll','Ap #444-4425 Egestas Rd.',7001),
  ('Damian','Rivera','(074) 07362896','lobortis.tellus.justo@aol.couk','08/17/1999','Sales and Marketing','Ap #807-7331 Nunc Rd.',4176),
  ('Kyle','Stanley','(0655) 18617953','ut@aol.edu','08/27/1972','Human Resources','4035 Malesuada Ave',9599),
  ('Shelby','Spence','(05840) 1648938','nunc@hotmail.com','04/27/1993','Finances','599-4978 Adipiscing Street',5374),
  ('Tobias','Sparks','(034226) 533613','lorem.luctus.ut@icloud.couk','12/09/1974','Quality Assurance','832-5147 Non Ave',NULL),
  ('Julian','Elliott','(025) 36110166','urna.nullam@outlook.com','10/17/1970','Human Resources','P.O. Box 808, 5451 Urna. Rd.',6870),
  ('Tad','Puckett','(01885) 8390844','cubilia.curae@icloud.ca','01/22/1997','Customer Service','P.O. Box 695, 8598 Nulla Ave',3450),
  ('Vanna','Hardy','(094) 35478236','donec.luctus@outlook.ca','07/03/1998','Tech Support','8921 Volutpat. St.',3636),
  ('Kay','Franco','(06398) 3507462','ut.ipsum.ac@outlook.com','12/23/1981','Customer Relations','1271 Maecenas Av.',5570);
INSERT INTO [Employees] (Firstname,Lastname,PhoneNumber,Email,BirthDate,Department,Address,Salary)
VALUES
  ('Joan','Houston','(04859) 2780727','adipiscing.lobortis@hotmail.couk','12/02/1990','Asset Management','358-3810 Sodales St.',4334),
  ('Jackson','Mcleod','(0858) 53817181','nec.eleifend.non@outlook.edu','08/06/1998','Customer Relations','995-9662 Dui. Avenue',6221),
  ('Calista','Lamb','(03400) 7180714','nunc.sollicitudin@aol.edu','12/02/1989','Sales and Marketing','P.O. Box 915, 5558 Etiam St.',9832),
  ('Jaden','Armstrong','(06738) 5175558','fringilla.mi.lacinia@hotmail.couk','05/25/2000','Asset Management','Ap #145-2394 Ligula Av.',8706),
  ('Isadora','Barlow','(099) 27206416','enim.condimentum@outlook.edu','12/22/1971','Customer Relations','Ap #589-2157 Donec Ave',9238),
  ('Rhiannon','Hayden','(044) 64504115','erat@protonmail.net','12/28/1991','Human Resources','Ap #348-907 Vel, St.',8919),
  ('Xanthus','Hooper','(00514) 1673244','massa.vestibulum@outlook.edu','01/29/2004','Accounting','Ap #223-9012 Magna St.',4098),
  ('William','Kirkland','(034972) 318763','odio.a@icloud.couk','04/22/1969','IT','4629 Sed Street',5343),
  ('Lee','Scott','(02501) 3297594','malesuada.fames.ac@google.edu','08/11/1996','Human Resources','P.O. Box 184, 7915 Sapien Road',4149),
  ('Chelsea','Peters','(0061) 94421254','nam.ac@icloud.ca','05/11/1976','Finances','P.O. Box 240, 5825 Morbi Rd.',5017);
INSERT INTO [Employees] (Firstname,Lastname,PhoneNumber,Email,BirthDate,Department,Address,Salary)
VALUES
  ('Cally','Rodriquez','(034182) 081537','hendrerit.consectetuer.cursus@hotmail.net','08/10/1981','Accounting','Ap #605-3928 Vivamus Avenue',2287),
  ('Jana','Curtis','(046) 38864877','lobortis@hotmail.org','06/01/1966','Legal Department','903-173 Turpis. Av.',2371),
  ('Meghan','Robertson','(082) 38305522','sit.amet@google.ca','10/04/1992','Customer Service','759-8377 Ullamcorper. Ave',2441),
  ('Cara','Franks','(012) 81644254','cum.sociis@yahoo.net','09/05/1998','Tech Support','9020 Imperdiet Rd.',4877),
  ('Uma','Huber','(0075) 77718894','nullam.lobortis@yahoo.org','06/11/1978','Customer Service','1891 Enim. St.',4013),
  ('Hyatt','Case','(037) 51520171','augue.ut@hotmail.org','10/18/1974','Accounting','P.O. Box 374, 3723 Mauris Rd.',3506),
  ('Ori','Fleming','(039645) 972186','nam.interdum@google.couk','07/11/1990','Advertising','Ap #675-3052 Donec St.',NULL),
  ('Moses','Dyer','(00435) 5634262','curabitur@icloud.couk','03/05/1984','Human Resources','6993 Diam. Avenue',2847),
  ('Armando','Villarreal','(0877) 93808421','orci.adipiscing@icloud.edu','10/20/1969','Tech Support','344-9645 Rhoncus. St.',5614),
  ('Vielka','Romero','(0178) 23396812','eu.ultrices@protonmail.ca','05/25/1967','Customer Service','213-9564 Adipiscing Street',9926);
