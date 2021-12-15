USE voters;

INSERT INTO regions VALUES ('1','01','GREATER-ACCRA'),
						   ('2','02','EASTERN'),
                           ('3','03','CENTRAL'),
                           ('4','04','WESTERN'),
                           ('5','05','VOLTA'),
                           ('6','06','ASHANTI'),
                           ('7','07','BRONG-AHAFO'),
                           ('8','08','NORTHERN'),
                           ('9','09','UPPER-EAST'),
                           ('10','10','UPPER-WEST');

INSERT INTO constituency_table VALUES ('1','East-legon','456','1'),
								('2','Koforidua','345','2'),
                                ('3','Cape Coast','467','3'),
                                ('4','Takoradi','675','4'),
                                ('5','Ho','489','5'),
                                ('6','Kumasi','786','6'),
                                ('7','Sunyani','567','7'),
                                ('8','Tamale','782','8'),
                                ('9','Bawku','453','9'),
                                ('10','Bolga','123','10');

INSERT INTO addresses VALUES ('1', '76859','GHANA','KUMASI','BANTAMA','6'),
							 ('2', '77589','GHANA','ACCRA','AJIRIGANOR','1'),
                             ('3', '56748','GHANA','CAPE COAST','ABORA','3'),
                             ('4', '48875','GHANA','SUNYANI','KATO','7'),
                             ('5', '38769', 'GHANA', 'TAKORADI','PIPEANO','4'),
                             ('6', '98670', 'GHANA', 'TAMALE', 'DAGOMBA', '8'),
                             ('7', '12345', 'GHANA', 'BAWKU', 'SISALA', '9'),
                             ('8', '09123', 'GHANA', 'BOLGA', 'MAIDUGURI', '10'),
                             ('9', '89823', 'GHANA', 'HO', 'AKOSOMBO', '5'),
                             ('10', '78695', 'GHANA', 'KOFORIDUA','KOFTOWN', '2');
                             
INSERT INTO user VALUES ('1', 'KOFI','ESHUN','kofshun@gmail','12345','020465789','1997-06-12','Male'),
						('2', 'HENRY','ANSAH','henryans@gmail','34567','020345789','1998-08-13','Male'),
                        ('3', 'ROBERT', 'MENSAH', 'robmens@gmail','82345','057867364','1996-01-24','Male'),
                        ('4', 'ABIGAIL', 'NYANING', 'abinya@gmail', '87456','023458791', '1976-02-04','Female'),
                        ('5', 'SUZZY','ADJEI','suzadj@gmail','09123','050674893','1997-03-10','Female'),
                        ('6', 'ABENA','HENE', 'abehen@gmail','56748','024499876','1996-05-12','Female'),
                        ('7', 'KWABENA','ADDO','kwabedd@gmail','43657','054871908','1980-06-07','Male'),
                        ('8', 'YAW', 'HENE', 'yawhene@gmail','78934','054678346','1983-09-14', 'Male'),
                        ('9', 'NANA', 'ADDO', 'nanddo@gmail', '45678', '0244364589', '1963-11-08','Male'),
                        ('10', 'REBECCA','ADDO','rebaddo@gmail', '78659', '0509823455', '1994-07-07','Female');
                        
INSERT INTO voter_card_info VALUES ('1','png','JPG','2022-03-07','2021-12-07','1','2'),
								   ('2','png','JPG','2022-03-07','2021-12-07','2','3'),
                                   ('3','png','JPG','2022-03-07','2021-12-07','3','4'),
                                   ('4','png','JPG','2022-03-07','2021-12-07','4','5'),
                                   ('5','png','JPG','2022-03-07','2021-12-07','5','6'),
                                   ('6','png','JPG','2022-03-07','2021-12-07','6','1'),
                                   ('7','png','JPG','2022-03-07','2021-12-07','7','8'),
                                   ('8','png','JPG','2022-03-07','2021-12-07','8','7'),
                                   ('9','png','JPG','2022-03-07','2021-12-07','9','10'),
                                   ('10','png','JPG','2022-03-07','2021-12-07','10','9');
								   
					
                             
                             
                             