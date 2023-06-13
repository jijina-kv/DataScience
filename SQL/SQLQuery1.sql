create table studies(pname varchar(10),institute varchar(40),course varchar(6),fees decimal);
create table software(pname varchar(10),title varchar(20),developin varchar(20),scost decimal,dcost decimal,sold int);
create table programmer(pname varchar(10),dob date,doj date,gender varchar(1),prof1 varchar(20),prof2 varchar(10),salary decimal);

insert studies(pname,institute,course,fees)values('ANAND','SABHARI','PGDCA',4500);
insert studies(pname,institute,course,fees)values('ALTAF','COITDCA','DCA',7200);
insert studies(pname,institute,course,fees)values('JULIANA','BDPS','MCA',22000);
insert studies(pname,institute,course,fees)values('KAMALA','PRAGATHI','DCA',5000);
insert studies(pname,institute,course,fees)values('MARY','SABHARI','PGDCA',4500);
insert studies(pname,institute,course,fees)values('NELSON','PRAGATHI','DAP',6200);
insert studies(pname,institute,course,fees)values('PATRICK','PRAGATHI','DCAP',5200);
insert studies(pname,institute,course,fees)values('QADIR','APPLE','HDCA',14000);
insert studies(pname,institute,course,fees)values('RAMESH','SABHARI','PGDCA',4500);
insert studies(pname,institute,course,fees)values('REBECCA','BRILLIANT','DCAP',11000);
insert studies(pname,institute,course,fees)values('REMITHA','BDPS','DCS',6000);
insert studies(pname,institute,course,fees)values('REVATHI','SABHARI','DAP',5000);
insert studies(pname,institute,course,fees)values('VIJAYA','BDPS','DCA',48000);

INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('MARY','README','CPP', 300,1200,84)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('ANAND','PARACHUTES',' BASIC', 399.95 ,6000 ,43)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('ANAND','VIDEO TITLING ','PASCAL',7500, 16000, 9)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('JULIANA',' INVENTORY ','COBOL',3000, 3500 ,0)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('KAMALA',' PAYROLL PKG.',' DBASE ',9000 ,20000, 7)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('MARY',' FINANCIAL ACCT.',' ORACLE',18000,85000,4)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('MARY',' CODE GENERATOR',' C ',4500,20000,23)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('PATTRICK ','README ','CPP ',300,1200,84)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('QADIR ','BOMBS AWAY ','ASSEMBLY',750,3000,11)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('QADIR',' VACCINES',' C', 1900, 3100, 21)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('RAMESH',' HOTEL MGMT.',' DBASE',13000, 35000 ,4)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('RAMESH',' DEAD LEE ','PASCAL', 599.95, 4500, 73)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('REMITHA',' PC UTILITIES ','C',725, 5000 ,51)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('REMITHA',' TSR HELP PKG. ','ASSEMBLY',2500,6000,7)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('REVATHI ','HOSPITAL MGMT.',' PASCAL',1100,75000,2)
INSERT INTO software(pname,title,developin,scost,dcost,sold)VALUES('VIJAYA',' TSR EDITOR',' C',900,700,6)INSERT INTO programmer(pname,dob,doj,gender,prof1,prof2,salary)VALUES('ANAND','12-Apr-66',' 21-Apr-92','M','PASCAL',' BASIC ','3200')
INSERT INTO programmer(pname,dob,doj,gender,prof1,prof2,salary)VALUES('ALTAF ','02-Jul-64',' 13-Nov-90 ','M',' CLIPPER',' COBOL',' 2800')
INSERT INTO programmer(pname,dob,doj,gender,prof1,prof2,salary)VALUES('JULIANA ','31-Jan-60',' 21-Apr-90 ','F','COBOL ','DBASE',' 3000')
INSERT INTO programmer(pname,dob,doj,gender,prof1,prof2,salary)VALUES('KAMALA',' 30-Oct-68',' 02-Jan-92','F',' C',' DBASE',' 2900')
INSERT INTO programmer(pname,dob,doj,gender,prof1,prof2,salary)VALUES('MARY',' 24-Jun-70 ','01-Feb-91 ','F',' CPP',' ORACLE ','4500')
INSERT INTO programmer(pname,dob,doj,gender,prof1,prof2,salary)VALUES('NELSON',' 11-Sep-85 ','11-Oct-89','M','COBOL',' DBASE',' 2500')
INSERT INTO programmer(pname,dob,doj,gender,prof1,prof2,salary)VALUES('PATTRICK ','10-Nov-65',' 21-Apr-90','M','PASCAL',' CLIPPER',' 2800')
INSERT INTO programmer(pname,dob,doj,gender,prof1,prof2,salary)VALUES('QADIR',' 31-Aug-65',' 21-Apr-91','M','ASSEMBLY ','C ','3000')
INSERT INTO programmer(pname,dob,doj,gender,prof1,prof2,salary)VALUES('RAMESH',' 03-May-67',' 28-Feb-91 ','M',' PASCAL',' DBASE',' 3200')
INSERT INTO programmer(pname,dob,doj,gender,prof1,prof2,salary)VALUES('REBECCA',' 01-Jan-67',' 01-Dec-90','F',' BASIC',' COBOL',' 2500')
INSERT INTO programmer(pname,dob,doj,gender,prof1,prof2,salary)VALUES('REMITHA',' 19-Apr-70 ','20-Apr-93','F ','C ','ASSEMBLY',' 3600')
INSERT INTO programmer(pname,dob,doj,gender,prof1,prof2,salary)VALUES('REVATHI',' 02-Dec-69',' 02-Jan-92','F',' PASCAL ','BASIC',' 3700')
INSERT INTO programmer(pname,dob,doj,gender,prof1,prof2,salary)VALUES('VIJAYA',' 14-Dec-65',' 02-May-92 ','F','FOXPRO',' C ','3500')