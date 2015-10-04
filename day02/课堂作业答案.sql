/*
1、  选择在部门30中员工的所有信息
2、  列出职位为（MANAGER）的员工的编号，姓名
3、  找出奖金高于工资的员工
4、  找出每个员工奖金和工资的总和
5、  找出部门10中的经理(MANAGER)和部门20中的普通员工(CLERK)
6、  找出部门10中既不是经理也不是普通员工，而且工资大于等于2000的员工
7、  找出有奖金的员工的不同工作
8、  找出没有奖金或者奖金低于500的员工
9、  显示雇员姓名，根据其服务年限，将最老的雇员排在最前面
*/
select * from emp where deptno=30;
select empno,ename from emp where job = 'MANAGER';
select * from emp where nvl(comm,0)>sal;
select ename,sal+nvl(comm,0) total from emp;
select * from emp where (deptno = 10 and job = 'MANAGER') or (deptno = 20 and job = 'CLERK');
select * from emp where deptno = 10 and job not in ('MANAGER','CLERK') and sal>=2000;
select distinct job from emp where comm is not null;
select * from emp where comm is null or nvl(comm,0)<500;
select ename,hiredate from emp order by hiredate ;
