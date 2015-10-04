/*
3、列出没有对应部门表信息的所有雇员的姓名、工作以及部门号
4、查找工资在1000～3000之间的雇员所在部门的所有人员信息
5、雇员中谁的工资最高。（使用rownum做）
6、雇员中谁的工资第二高（考虑并列第一的情况，如何处理）。
*/
select e.ename,e.job,e.deptno from emp e,dept d where e.deptno(+) = d.deptno and e.deptno not in
(select deptno from dept);
select * from emp where deptno in (select distinct deptno from emp where sal between 1000 and 3000);
select ename from (select * from emp order by sal desc) where rownum=1;
select ename, sal from (select ename,sal from (select * from emp order by sal desc) where rownum<3 order by sal) where rownum<2;
