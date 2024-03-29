INSERT INTO bedrijf (BedrijfNaam, BedrijfAdres, BedrijfPostcode, BedrijfPlaats, BedrijfTelefoon, BedrijfEmail) VALUES
('Stenden eHelp', 'Van Schaikweg 94', '7811KL', 'Emmen', '0591123456', 'info@stenden.com'),
('Janssen en Zn.', 'Kraaklaan 34', '5678BH', 'Enschede', '0845621456', 'info@janssen.biz'),
('HAMA', 'Hoofdstraat 4', '7812AB', 'Emmen', '0569874532', 'info@hama.nl'),
('Albert Geijn', 'De Baander 11', '7811AG', 'Emmen', '0591456987', 'emmen@albertgeijn.nl'),
('Kinderopvang Ome Beikie', 'Balingerbrink 187', '7812VP', 'Emmen', '0591123654', 'omebeikie@koepelgevangenis.nl'),
('B1000 Sexbierum', 'De buorren 6', '9289RK', 'Sexbierum', '0512586548', 'sexbierum@B1000.nl'),
('Klusbedrijf G. Ploertsma', 'Op ''e Dyk 25', '8915ZM', 'Mooie Paal', '4558662245', 'gurbe@live.nl'),
('Hoveniersbedrijf Moddersma', 'Zandlaan 15', '5687DF', 'Tuindorp', '2548752145', 'gerko@12move.nl'),
('Klootschietvereniging Het Balletje', 'De Lange Baan 16', '9658QW', 'Staphorst', '2547855455', 'schietmoarraak@hetballetje.org'),
('De Matraskoning', 'Slaaplaan 5', '3131GV', 'Apeldoorn', '0125678145', 'info@matraskoning.nl');

INSERT INTO product (Product, ProductAanschaf, ProductLicentieTot, ProductKlantID) VALUES
('FinSoft', '2014-03-05', '2015-03-05', 2),
('Helpdesk', '2014-03-05','2015-03-05', 2),
('FinSoft', '2012-12-13','2013-12-13', 3),
('FinSoft', '2013-12-13','2014-12-13', 3),
('FinSoft', '2014-12-13', '2015-12-13', 3),
('Helpdesk', '2014-12-13','2015-12-13', 3),
('FinSoft', '2013-06-12','2014-06-12', 4),
('FinSoft', '2014-06-12','2015-06-12', 4),
('Helpdesk', '2014-12-13', '2015-12-13', 4),
('FinSoft', '2014-01-01','2015-01-01', 5),
('Helpdesk', '2014-01-01', '2015-01-01', 5),
('FinSoft', '2014-03-05', '2015-03-05', 6),
('Helpdesk', '2014-03-05','2015-03-05', 6),
('FinSoft', '2012-12-13','2013-12-13', 7),
('FinSoft', '2013-12-13','2014-12-13', 7),
('FinSoft', '2014-12-13', '2015-12-13', 7),
('Helpdesk', '2014-12-13','2015-12-13', 7),
('FinSoft', '2013-06-12','2014-06-12', 8),
('FinSoft', '2014-06-12','2015-06-12', 8),
('Helpdesk', '2014-12-13', '2015-12-13', 8),
('FinSoft', '2014-01-01','2015-01-01', 9),
('Helpdesk', '2014-01-01', '2015-01-01', 9);

INSERT INTO user (UserInlog, UserWw, UserNaam, UserBedrijf, UserFunctie, UserTelefoon, UserEmail, UserFoto, UserAfdeling) VALUES
('admin', '$2y$10$p/txAPpfUKMawuSLfxGz5.UmprttsTVHioyIBlXgWvbGyLKgg0i.6', 'Administrator', 1, 'Beheerder', NULL, 'admin@ehelp.nl', '1.jpg', 'ICT'),
('mvandam', '$2y$10$9T0nJH4XMTbBc7NAnaAeE.9upt.QDWiuAI/GetuXrdCn09NozH.py', 'Marloes van Dam', 1, 'Medewerker', NULL, 'mvandam@bedrijf.nl', '2.jpg', NULL),
('sblankenstijn', '$2y$10$yGjHe9bjw6bUapFVNt7LgeseE6L3W2sjgVye821L45g2p9Xe7Qloq', 'Sieuwke Blankenstijn', 1, 'Medewerker', NULL, 'sblankenstijn@bedrijf.nl', '3.jpg', NULL),
('skoole', '$2y$10$1wTvivLnA.HrSLCsU9AA0exqvv90aZ.gJlkTa.UFF.SBgjMJDdIqK', 'Seren Koole', 1, 'Medewerker', NULL, 'skoole@bedrijf.nl', '4.jpg', NULL),
('skoppers', '$2y$10$cb71D3B4oITcmkqiHXFD7O146R6w.uoMfnZFOj6dnvF1xmOFUnjiy', 'Silva Koppers', 1, 'Medewerker', NULL, 'skoppers@bedrijf.nl', '5.jpg', NULL),
('bdejager', '$2y$10$iJJqBBValEx0ZOcYz7ZjzOGUnT4FF5xOPoHtlbt5a1InkWz7hCl1G', 'Bob de Jager', 1, 'Medewerker', NULL, 'bdejager@bedrijf.nl', '6.jpg', NULL),
('mvanderwaardt', '$2y$10$2BtyRsJ/.ujeDWK6Rb8t..dhJL5n4IqBD8x7KJVkchbWDDEfNS.DO', 'Milos van der Waardt', 1, 'Medewerker', NULL, 'mvanderwaardt@bedrijf.nl', '7.jpg', NULL),
('wschenk', '$2y$10$1NHksuulLQw3UkNB7FQ7WuNqpsG0r9djo1G670U6My21pwTMY3v3y', 'Wesley Schenk', 1, 'Medewerker', NULL, 'wschenk@bedrijf.nl', '8.jpg', NULL),
('jduindam', '$2y$10$2/35Xo7vQTWQltTU4v3laeeX1C7h2W/0MIRVTd699I/I3asNd39Yy', 'Justine Duindam', 1, 'Medewerker', NULL, 'jduindam@bedrijf.nl', '9.jpg', NULL),
('info@janssen.biz', '$2y$10$eXJGD3PggSt5tiNPfgxFaemer1exG3Lk2ExRMkRjCl6ZxPOzD/U/K', 'Janssen en Zn.', 2, 'Medewerker', NULL, 'info@janssen.biz', NULL, NULL),
('info@hama.nl', '$2y$10$859rQufB2Titc6Os.NBP1eLnoLRQ3JcW26pDjOm3Dmcllxnxf04FK', 'HAMA', 3, 'Medewerker', NULL, 'info@hama.nl', NULL, NULL),
('emmen@albertgeijn.nl', '$2y$10$.Qy415NfcJiykBnVbMxNGuAO/2IbNYhnj5RO7gmCSvlSgQjhSpfv6', 'Albert Geijn', 4, 'Medewerker', NULL, 'emmen@albertgeijn.nl', NULL, NULL),
('omebeikie@koepelgevangenis.nl', '$2y$10$F4JerUZkDiDH29CYm.WM/.zA1iYfAopyFsyGGDnMBgcS/s1h9Pn9G', 'Kinderopvang Ome Beikie', 5, 'Medewerker', NULL, 'omebeikie@koepelgevangenis.nl', NULL, NULL),
('sexbierum@B1000.nl', '$2y$10$FTPoOyo2RjXGLK9bj8wrq./t2.RZzH95fmB94UKoHVqILBrs73wci', 'B1000 Sexbierum', 6, 'Medewerker', NULL, 'sexbierum@B1000.nl', NULL, NULL),
('gurbe@live.nl', '$2y$10$RT5.c.gzx.nbXEqnCUUwgOOPyMm64ZBW7vCbVIMEzqW597rTP5dZm', 'Klusbedrijf G. Ploertsma', 7, 'Medewerker', NULL, 'gurbe@live.nl', NULL, NULL),
('gerko@12move.nl', '$2y$10$ohesALWlVlI1UWfGrvGS2uaovtoedqT2fSMLiDbg46MSsBWEUtxBS', 'Hoveniersbedrijf Moddersma', 8, 'Medewerker', NULL, 'gerko@12move.nl', NULL, NULL),
('schietmoarraak@hetballetje.org', '$2y$10$sysiF1g4NsdNM5T1EDV/rOJo0Dx0IACxvVGSFtzlBuVEh19R37lT2', 'Klootschietvereniging Het Balletje', 9, 'Medewerker', NULL, 'schietmoarraak@hetballetje.org', NULL, NULL),
('info@matraskoning.nl', '$2y$10$FgxD9EpQPR69Q./J0IS8nORTmhmQjPbeMbasE6BIPVb9.hgNRNRLW', 'De Matraskoning', 10, 'Medewerker', NULL, 'info@matraskoning.nl', NULL, NULL);
