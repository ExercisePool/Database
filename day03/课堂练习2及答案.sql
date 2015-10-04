/*
           练习：查询出每个人的姓名、工资以及他领导的姓名以及工资；
          
           练习：把上面例子中加上他们各自的部门名称；
           
           练习：查询出每个雇员的姓名、工资、部门名称、工资所在等级以及领导的姓名及领导
                  的工资和领导工资所在公司的等级；

		   练习：要求查出部门名称、部门的员工数、部门的平均工资和部门的最低收入雇员的姓名；
				 
                  */
select e1.ename,e1.sal,e2.ename,e2.sal from emp e1,emp e2 where e1.mgr = e2.empno;

select e1.ename,e1.sal,d1.dname,e2.ename,e2.sal,d2.dname from emp e1,emp e2,dept d1,dept d2 
       where e1.mgr = e2.empno and e1.deptno = d1.deptno and e2.deptno = d2.deptno;
       
select e1.ename,e1.sal,d.dname,s1.grade,e2.ename,e2.sal,s2.grade from emp e1,emp e2,dept d,salgrade 
s1,salgrade s2 where e1.mgr = e2.empno and e1.deptno = d.deptno and e1.sal between s1.losal 
and s1.hisal and e2.sal between s2.losal and s2.hisal;

 select d.dname,e2.d,e2.a,e1.ename,e2.m from emp e1,
     					  (select deptno,count(*) d,avg(sal+nvl(comm,0)) a,min(sal) m from emp group by deptno) e2,
             					  dept d where e2.deptno = d.deptno and e1.sal = e2.m;
