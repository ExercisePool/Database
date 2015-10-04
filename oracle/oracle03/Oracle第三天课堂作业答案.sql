/*1、找出25 年前雇的员工 
2、所有员工名字前加上Dear ,并且名字首字母大写 
3、找出姓名为5 个字母的员工   
4、找出姓名中不带R 这个字母的员工  
5、显示所有员工的姓名的第一个字   
6、假设一个月为30 天，找出所有员工的日薪，不计小数  
7、找到2 月份受雇的员工   
8、列出员工加入公司的天数(四舍五入）  
9、分别用case 和decode 函数列出员工所在的部门，deptno=10 显示'部门10', 
 deptno=20 显示'部门20' 
 deptno=30 显示'部门30' 
 deptno=40 显示'部门40' 
 否则为'其他部门'*/
 
 select * from emp where months_between(sysdate,hiredate)>=25*12 ;
 select concat('Dear',concat(' ',initcap(ename))) ename from emp;
 select * from emp where length(ename)=5;
 select * from emp where ename like '_____';
 select * from emp where ename not like '%R%';
 select substr(ename,0,1) ename from emp; 
 select ename,trunc(sal/30) daysal from emp;
 select * from emp where to_char(hiredate,'mm') = 02;
 select to_char(hiredate,'month') from emp;
 select round(months_between(sysdate,hiredate)*30) total1,round(months_between(sysdate,hiredate)/12*365) total from emp;
 
