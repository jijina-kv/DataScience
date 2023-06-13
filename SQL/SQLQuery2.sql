--Tasks to be performed: 
--1. Find out the selling cost AVG for packages developed in Pascal. 
select avg(scost) from software where developin='PASCAL'
--------------------------------------------------------------------------------------------
--2. Display Names, Ages of all Programmers. 
select pname,datediff(year,dob,GETDATE()) as Age from programmer
--------------------------------------------------------------------------------------------
--3. Display the Names of those who have done the DAP Course. 
select pname from studies where course='DAP' ;
--------------------------------------------------------------------------------------------
--4. Display the Names and Date of Births of all Programmers Born in January.
select pname,dob from programmer where month(dob)=1;
--------------------------------------------------------------------------------------------
--5. What is the Highest Number of copies sold by a Package? 
select max(sold)  from software   
--------------------------------------------------------------------------------------------
--6. Display lowest course Fee. 
select min(fees) as lowestPrice from studies
--------------------------------------------------------------------------------------------
--7. How many programmers done the PGDCA Course? 
select count(pname) from studies where course='PGDCA';
--------------------------------------------------------------------------------------------
--8. How much revenue has been earned thru sales of Packages Developed in C.
select sum(sold*scost) from software where trim(developin)='C';
--------------------------------------------------------------------------------------------
--9. Display the Details of the Software Developed by Ramesh. 
select * from software where pname='Ramesh'
--------------------------------------------------------------------------------------------
--10. How many Programmers Studied at Sabhari? 
select count(pname) from studies where institute='Sabhari'
--------------------------------------------------------------------------------------------
--11. Display details of Packages whose sales crossed the 2000 Mark. 
select * from software where sold*scost>2000
--------------------------------------------------------------------------------------------
--12. Display the Details of Packages for which Development Cost have been recovered.
select *,sold*scost as salescost,sold*dcost as devcost from software where sold*scost-sold*dcost>0
--------------------------------------------------------------------------------------------
--13. What is the cost of the costliest software development in Basic? 
select max(dcost) from software where trim(developin)='Basic'
--------------------------------------------------------------------------------------------
--14. How many Packages Developed in DBASE? 
select count(title)  from software where trim(developin)='DBASE'
--------------------------------------------------------------------------------------------
--15. How many programmers studied in Pragathi? 
select count(pname) from studies where institute='Pragathi'
--------------------------------------------------------------------------------------------
--16. How many Programmers Paid 5000 to 10000 for their course? 
select * from studies where fees between 5000 and 10000
--------------------------------------------------------------------------------------------
--17. What is AVG Course Fee

select avg(fees) from studies 
--------------------------------------------------------------------------------------------
--18. Display the details of the Programmers Knowing C.
select * from programmer where trim(prof1)='C' or trim(prof2)='C'
--------------------------------------------------------------------------------------------
--19. How many Programmers know either COBOL or PASCAL. 
select count(pname) from programmer where trim(prof1) in ('COBOL','PASCAL') or trim(prof2) in ('COBOL','PASCAL')

--------------------------------------------------------------------------------------------
--20. How many Programmers Don’t know PASCAL and C 
select count(pname) from programmer where trim(prof1) not in ('PASCAL','C') and trim(prof2) not in ('PASCAL','C')

--------------------------------------------------------------------------------------------
--21. How old is the Oldest Male Programmer. 
select max(datediff(year,dob,GETDATE())) as oldest from programmer
--------------------------------------------------------------------------------------------
--22. What is the AVG age of Female Programmers? 
select avg(datediff(year,dob,GETDATE())) as avgFemaleage from programmer where trim(gender)='F';

--------------------------------------------------------------------------------------------
--23. Calculate the Experience in Years for each Programmer and Display with their names in Descending order. 
select *,datediff(year,doj,GETDATE()) as Experience from programmer ORDER BY Experience desc ;

--------------------------------------------------------------------------------------------
--24. Who are the Programmers who celebrate their Birthday’s During the Current Month? 
select * from programmer where MONTH(dob)=month(GETDATE())
--------------------------------------------------------------------------------------------

--25. How many Female Programmers are there? 
select count(pname) from programmer where trim(gender)='F'
--------------------------------------------------------------------------------------------
--26. What are the Languages studied by Male Programmers. 

select * from (select trim(prof1) as lang from programmer where trim(gender)='M'
union 
select trim(prof2) as lang from programmer where trim(gender)='M' ) a group by lang
--------------------------------------------------------------------------------------------
--27. What is the AVG Salary? 
select avg(salary) from programmer
--------------------------------------------------------------------------------------------
--28. How many people draw salary 2000 to 4000? 
select * from programmer where salary between 2000 and 4000
--------------------------------------------------------------------------------------------
--29. Display the details of those who don’t know Clipper, COBOL or PASCAL. 
select * from programmer where trim(prof1) not in ('Clipper','COBOL','PASCAL') and trim(prof2) not in ('Clipper','COBOL','PASCAL')
--------------------------------------------------------------------------------------------
--30. Display the Cost of Package Developed By each Programmer. 
select pname,sum(sold*dcost) as devcost from software  group by pname 
--------------------------------------------------------------------------------------------
--31. Display the sales values of the Packages Developed by the each Programmer. 
select pname,sum(sold*scost) as sales from software  group by pname 
--------------------------------------------------------------------------------------------
--32. Display the Number of Packages sold by Each Programmer. 
select pname,count(title) as countofs from software  group by pname 

--------------------------------------------------------------------------------------------
--33. Display the sales cost of the packages Developed by each Programmer Language wise. 
select pname,developin,sum(sold*scost) as sales from software  group by pname,developin 
--------------------------------------------------------------------------------------------

--34. Display each language name with AVG Development Cost, AVG Selling Cost and AVG Price per Copy. 
select developin,avg(dcost*sold) as avgDevCost,avg(scost*sold) as AvgSalesCost,avg(scost) as 'AVG Price per Copy' from software  group by developin
--------------------------------------------------------------------------------------------

--35. Display each programmer’s name, costliest and cheapest Packages Developed by him or her. 
select pname,max(scost) as costliest,min(scost) as Cheapest from software group by pname
--------------------------------------------------------------------------------------------
--36. Display each institute name with number of Courses, Average Cost per Course. 
select institute,count(course) as count ,avg(fees) as Fees from studies group by institute
--------------------------------------------------------------------------------------------
--37. Display each institute Name with Number of Students.
select institute,count(pname) as count  from studies group by institute
--------------------------------------------------------------------------------------------
--38. Display Names of Male and Female Programmers. Gender also. 
select pname,gender from programmer
--------------------------------------------------------------------------------------------
--39. Display the Name of Programmers and Their Packages. 
select pname,title from software
--------------------------------------------------------------------------------------------
--40. Display the Number of Packages in Each Language Except C and C++. 
select developin,count(title) as Count from software where trim(developin) not in ('C','C++') group by developin; 
--------------------------------------------------------------------------------------------
--41. Display the Number of Packages in Each Language for which Development Cost is less than 1000.
select developin,count(title) as Count from software where dcost<1000 group by developin
--------------------------------------------------------------------------------------------
--42. Display AVG Difference between SCOST, DCOST for Each Package. 
select title,avg((scost)-(dcost)) as AvgDiff from software group by title
--------------------------------------------------------------------------------------------
--43. Display the total SCOST, DCOST and amount to Be Recovered for each Programmer for Those Whose Cost has not yet been Recovered. 
select pname,sum(sold*scost) as sales,sum(dcost) as dcost,sum(sold*scost)-sum(dcost) as recovered from software group by pname having sum(sold*scost)-sum(dcost)<0
--------------------------------------------------------------------------------------------
--44. Display Highest, Lowest and Average Salaries for those earning more than 2000.
select max(salary) as highest,min(salary) as lowest,avg(salary) as avgsalary from programmer where salary>2000
--------------------------------------------------------------------------------------------
--45. Who is the Highest Paid C Programmers? 
select top 1 * from programmer where (trim(prof1)='C' or trim(prof2)='C') order by salary desc 
--------------------------------------------------------------------------------------------
--46. Who is the Highest Paid Female COBOL Programmer? 
select top 1 * from programmer where gender='F' and  (trim(prof1)='COBOL' or trim(prof2)='COBOL') order by salary desc 
--------------------------------------------------------------------------------------------
--47. Display the names of the highest paid programmers for each Language. 
WITH cte AS (
  SELECT PNAME, SALARY, PROF1 PROF FROM programmer
  UNION 
  SELECT PNAME, SALARY, PROF2      FROM programmer
)
SELECT p1.PNAME, p1.PROF, p1.SALARY
FROM cte p1
LEFT JOIN cte p2
  ON p1.PROF = p2.PROF AND p1.SALARY < p2.SALARY
WHERE p2.PNAME IS NULL  order by p1.PROF

--------------------------------------------------------------------------------------------
--48. Who is the least experienced Programmer. 
select top 1 pname,datediff(year,doj,getdate()) as Experience from programmer order by Experience
--------------------------------------------------------------------------------------------
--49. Who is the most experienced male programmer knowing PASCAL. 
select top 1 pname,datediff(year,doj,getdate()) as Experience from programmer where (prof1='PASCAL' or prof2='PASCAL' ) order by Experience desc 
--------------------------------------------------------------------------------------------
--50. Which Language is known by only one Programmer? 
WITH cte AS (
  SELECT PNAME, SALARY, PROF1 PROF FROM programmer
  UNION 
  SELECT PNAME, SALARY, PROF2      FROM programmer
)
select count(pname) as countc,prof from cte group by prof  having count(pname)=1
--------------------------------------------------------------------------------------------
--51. Who is the Above Programmer Referred in 50? 
--------------------------------------------------------------------------------------------
--52. Who is the Youngest Programmer knowing DBASE? 
WITH cte AS (
  SELECT PNAME, SALARY, PROF1 PROF,datediff(year,dob,getdate()) as Age FROM programmer where prof1='DBASE'
  UNION 
  SELECT PNAME, SALARY, PROF2   ,datediff(year,dob,getdate()) as Age   FROM programmer where prof2='DBASE'
)
select top 1 * from cte order by  Age   

--------------------------------------------------------------------------------------------
--53. Which Female Programmer earning more than 3000 does not know C, C++, ORACLE or DBASE? 
 WITH cte AS (
  SELECT PNAME, SALARY, PROF1 PROF,datediff(year,dob,getdate()) as Age FROM programmer where prof1 
  not in ('C','C++','ORACLE','DBASE') and gender='F' and salary>3000
  UNION 
  SELECT PNAME, SALARY, PROF2   ,datediff(year,dob,getdate()) as Age   FROM programmer where prof2
    not in ('C','C++','ORACLE','DBASE') and gender='F' and salary>3000
)
select top 1 * from cte order by  Age   
--------------------------------------------------------------------------------------------

--54. Which Institute has most number of Students? 
select institute,count(pname) as studentcount  from studies group by institute
--------------------------------------------------------------------------------------------
--55. What is the Costliest course? 
select top 1 * from studies order by fees desc  
--------------------------------------------------------------------------------------------
--56. Which course has been done by the most of the Students? 
select top 1 * from (select course,count(pname) as counts from studies group by course ) c order by counts desc
--------------------------------------------------------------------------------------------
--57. Which Institute conducts costliest course. 

select top 1 institute from studies order by fees desc
--------------------------------------------------------------------------------------------
--58. Display the name of the Institute and Course, which has below AVG course fee. 
select institute,course,fees from studies where fees<(select avg(fees) from studies)
 
--------------------------------------------------------------------------------------------
--59. Display the names of the courses whose fees are within 1000 (+ or -) of the Average Fee, 
select institute,course,fees from studies where fees between (select avg(fees) from studies)-1000 and (select avg(fees) from studies)+1000
--------------------------------------------------------------------------------------------

--60. Which package has the Highest Development cost? 
select top 1 title,dcost from software order by dcost desc
--------------------------------------------------------------------------------------------
--61. Which course has below AVG number of Students? 
with cte as (select course,count(pname) as noofstudents  from studies  group by course)
select * from cte  where noofstudents<(select avg(noofstudents) from cte)

 --------------------------------------------------------------------------------------------
--62. Which Package has the lowest selling cost?  
select * from software where scost=(select min(scost) from software)
--------------------------------------------------------------------------------------------
--63. Who Developed the Package that has sold the least number of copies? 
select * from software where sold=(select min(sold) from software )
--------------------------------------------------------------------------------------------
--64. Which language has used to develop the package, which has the highest sales amount? 
select * from software where (scost*sold)=(select max(sold*scost) from software)
--------------------------------------------------------------------------------------------
--65. How many copies of package that has the least difference between development and selling cost where sold. 
select * from software where (dcost-scost)=(select min(dcost-scost) from software)
--------------------------------------------------------------------------------------------

--66. Which is the costliest package developed in PASCAL. 
select * from software where dcost=(select max(dcost) from software where developin='PASCAL')
--------------------------------------------------------------------------------------------
--67. Which language was used to develop the most number of Packages. 
with cte as (select developin,count(pname) as count from software group by developin)
select * from cte where count=(select max(count) from cte)
--------------------------------------------------------------------------------------------

--68. Which programmer has developed the highest number of Packages? 
with cte as (select pname,count(pname) as count from software group by pname)
select * from cte where count=(select max(count) from cte)
-----------------------------------------------------------

--69. Who is the Author of the Costliest Package? 
select pname,dcost from software where dcost=(select max(dcost) from software)
-----------------------------------------------------------
--70. Display the names of the packages, which have sold less than the AVG number of copies.

select * from software where sold<(select avg(sold) from software)
-----------------------------------------------------------
--71. Who are the authors of the Packages, which have recovered more than double the Development cost? 
select * from software where scost*sold>2*dcost
-----------------------------------------------------------
--72. Display the programmer Name and the cheapest packages developed by them in each language. 
select * from software a,(select  developin,min(dcost) as dcost from software 
group by developin)  b where a.developin=b.developin and a.dcost=b.dcost
-----------------------------------------------------------
73. Display the language used by each programmer to develop the Highest 
select a.*,b.title as highest,c.title as lowest from (select pname,min(sold) as lowest,max(sold) highest from software group by pname ) a 
left join software b on a.pname=b.pname and a.highest=b.sold 
left join software c on a.pname=c.pname and a.lowest=c.sold
-----------------------------------------------------------
--74. Who is the youngest male Programmer born in 1965? 
select top 1 * from programmer where year(dob)=1965 order by dob desc    
-----------------------------------------------------------
--75. Who is the oldest Female Programmer who joined in 1992?
select top 1 * from programmer where year(dob)=1992 order by dob  
-----------------------------------------------------------

--76. In which year was the most number of Programmers born.
select top 1 year(dob) as byear,count(pname) as noofprog from programmer group by year(dob) order by noofprog desc 
-----------------------------------------------------------
--77. In which month did most number of programmers join? 
with cte as (select   year(doj) as byear,count(pname) as noofprog from programmer group by year(doj)
   )
select * from cte where noofprog=(select max(noofprog) from cte)

-----------------------------------------------------------
--78. In which language are most of the programmer’s proficient. 
with cte as (select prof,count(pname) as noofpname from (select pname,prof1 as prof from programmer
union 
select pname,prof2 from programmer) c group by prof)
select * from cte where noofpname=(select max(noofpname) from cte)
-----------------------------------------------------------
--79. Who are the male programmers earning below the AVG salary of Female Programmers? 
select * from programmer where gender='M' and salary<(select avg(salary) from programmer where gender='F')
-----------------------------------------------------------
--80. Who are the Female Programmers earning more than the Highest Paid? 
select * from programmer where gender='F' and salary>(select max(salary) from programmer  where gender='M')
-----------------------------------------------------------
--81. Which language has been stated as the proficiency by most of the Programmers? 

with cte as (select prof,count(pname) as noofpname from (select pname,prof1 as prof from programmer
union 
select pname,prof2 from programmer) c group by prof)
select * from cte where noofpname=(select max(noofpname) from cte)

-----------------------------------------------------------
--82. Display the details of those who are drawing the same salary. 
select a.*,b.scount from programmer a,(select salary,count(pname) as scount from programmer group by salary) b
where a.salary=b.salary and b.scount>1
-----------------------------------------------------------
--83. Display the details of the Software Developed by the Male Programmers Earning More than 3000/-. 
select b.*,a.salary from programmer a,software b where a.pname=b.pname and a.salary>3000 and a.gender='M'
-----------------------------------------------------------
--84. Display the details of the packages developed in Pascal by the Female  Programmers. 
select b.*,a.salary from programmer a,software b where a.pname=b.pname and   a.gender='F'  and b.developin='PASCAL'

-----------------------------------------------------------
--85. Display the details of the Programmers who joined before 1990. 
select a.* from programmer a  where year(doj)<1990
-----------------------------------------------------------

--86. Display the details of the Software Developed in C By female programmers of Pragathi. 

select b.*,a.salary,c.* from programmer a,software b,studies c where a.pname=b.pname and a.pname=c.pname
and   a.gender='F'  and b.developin='C' and c.institute='Pragathi'
-----------------------------------------------------------
--87. Display the number of packages, No. of Copies Sold and sales value of each programmer institute wise. 
select institute,count(title) as noofpackages,sum(sold) as mnoofsold,sum(sold*scost) as soldamt from software a,studies b where a.pname=b.pname group by b.institute
-----------------------------------------------------------
--88. Display the details of the software developed in DBASE by Male Programmers, who  belong to the institute in which most number of Programmers studied. 
with cte as (select count(pname) as pcount,institute from studies group  by institute )
select b.*,a.salary,c.* from programmer a,software b,studies c where a.pname=b.pname and a.pname=c.pname
and   a.gender='M'  and b.developin='DBASE' and c.institute=(select institute from cte where pcount=(select max(pcount) from cte ))
-----------------------------------------------------------

--89. Display the details of the software Developed by the male programmers Born before 1965 and female programmers born after 1975.
select b.*,a.salary from programmer a,software b where a.pname=b.pname and ( ( a.gender='M' 
and year(dob)<1965) or (a.gender='F' 
and year(dob)<1975))

-----------------------------------------------------------
--90. Display the details of the software that has developed in the language which is neither the first nor the second proficiency of the programmers. 
select a.* from software a left join programmer b on a.pname=b.pname and (a.developin=b.prof1 or a.developin=b.prof2)
where b.pname is null

-----------------------------------------------------------
--91. Display the details of the software developed by the male students of Sabhari. 
select a.* from software a,studies b,programmer c where a.pname=b.pname and a.pname=c.pname 
and b.institute='Sabhari' and c.gender='M'
-----------------------------------------------------------

--92. Display the names of the programmers who have not developed any packages. 

select a.* from programmer a left join software b on a.pname=b.pname where b.pname is null
-----------------------------------------------------------
--93. What is the total cost of the Software developed by the programmers of Apple? 
select sum(dcost) from software a,studies b where a.pname=b.pname and b.institute='Apple'
-----------------------------------------------------------
--94. Who are the programmers who joined on the same day?
select * from programmer where doj in (select doj from (select doj,count(pname) as jcount from programmer group by doj  )
a where jcount>1 ) order by doj
-----------------------------------------------------------
--95. Who are the programmers who have the same Prof2? 
-----------------------------------------------------------
select * from programmer where prof2 in (select prof2 from (select prof2,count(pname) as jcount from programmer 
group by prof2  )
a where jcount>1 ) order by prof2

-----------------------------------------------------------
--96. Display the total sales value of the software, institute wise. 
select b.institute,sum(sold*scost) as sales from software a,studies b where a.pname=b.pname group by b.institute
-----------------------------------------------------------
--97. In which institute does the person who developed the costliest package studied. 
select b.institute,sum(sold*scost) as sales from software a,studies b where a.pname=b.pname group by b.institute
-----------------------------------------------------------
--98. Which language listed in prof1, prof2 has not been used to develop any package. 
select a.* from programmer a left join software b on a.prof1=b.developin where b.pname is null
union
select a.* from programmer a left join software b on a.prof2=b.developin where b.pname is null
-----------------------------------------------------------
--99. How much does the person who developed the highest selling package earn and what course did HE/SHE undergo.

select a.*,b.institute from (select pname,sold*scost as sales from software where sold*scost=(select max(sold*scost)
from software ) )a,studies b where a.pname=b.pname
-----------------------------------------------------------
--100. What is the AVG saSlary for those whose software sales is more than 50,000/-.

select avg(salary) as avgsalary from programmer where pname in (select pname from software where sold*scost>50000)
-----------------------------------------------------------
--101. How many packages were developed by students, who studied in institute that charge the lowest course fee? 
select * from software where pname in (select pname from studies where fees=(select min(fees) from studies))
-----------------------------------------------------------
--102. How many packages were developed by the person who developed the cheapest package, where did HE/SHE study? 

select pname,title,(select institute from studies a where a.pname=b.pname) as institute from software b where pname in (select pname from software where dcost=(select min(dcost) from software))
-----------------------------------------------------------
--103. How many packages were developed by the female programmers earning more 
--than the highest paid male programmer? 
select count(title) as noofpackages from software where pname in (select pname from programmer where
gender='F' and salary>(select max(salary) from programmer where gender='M'))

-----------------------------------------------------------
--104. How many packages are developed by the most experienced programmer form  BDPS. 
with cte as (select pname,datediff(year,doj,getdate()) as experience from programmer where pname in
(select pname from studies where 
institute='BDPS'))
-----------------------------------------------------------
--105. List the programmers (form the software table) and the institutes they studied. 
select a.pname,b.institute from software a,studies b where a.pname=b.pname 
-----------------------------------------------------------
--106. List each PROF with the number of Programmers having that PROF and the number of the packages in that PROF. 

with cte as (
select pname,prof1 as prof from programmer
union 
select pname,prof2 as prof from programmer)
select a.*,b.* from (select prof,count(pname) as noofprog from cte group by prof) a,
(select developin,count(pname) as noofpackages from software group by developin) b where a.prof=b.developin
-----------------------------------------------------------
--107. List the programmer names (from the programmer table) and No. Of Packages  each has developed.

select a.pname,count(b.title) as noofpackages from programmer a,software b where a.pname=b.pname group by a.pname
-----------------------------------------------------------