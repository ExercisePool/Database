/*
1、 Table:   （员工 emp1） 
id   name 
1 a 
2 b 
3 c 
4  d 
 
Table:( 性别 sext) 
 
id sex 
1 男 
4 女 
5 男 
 
找出忘记填写性别的员工
2、列出员工表中每个部门的员工数，和部门编号
3、找出工资比jones多的员工  
4、列出所有员工的姓名和其上级的姓名
5、以职位分组，找出平均工资最高的两种职位
6、查找出不在部门20，且比部门20中任何一个人工资都高的员工姓名、部门名称
7、查找出职位和'MARTIN'  或者'SMITH'一样的员工的平均工资
8、查找出不属于任何部门的员工*/

1、select * from emp1 where id not in (select id from sext);
2、select deptno,count(*) from emp group by deptno;
3、select * from emp where sal>(select sal from emp where lower(ename)='jones');
4、select e1.ename as lower ,e2.ename as upper from emp e1,emp e2 where e1.mgr 
= e2.empno;
5、select job from (select job,avg(sal) a from emp group by job order by a desc ) where rownum<3;
6、select e.ename,d.dname from emp e,dept d 
         where e.sal>all(select sal from emp where deptno = 20) 
               and d.deptno<>20 
                   and e.deptno = d.deptno;
7、select avg(sal) from emp where job in (select job from emp where ename='MARTIN' or ename='SMITH');
8、select * from emp where deptno is null or deptno not in(select deptno from dept);
