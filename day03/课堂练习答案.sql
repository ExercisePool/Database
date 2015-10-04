/*
1、  分组统计各部门下工资>500的员工的平均工资
2、  统计各部门下平均工资大于500的部门
3、  算出部门30中得到最多奖金的员工奖金
4、  算出部门30中得到最多奖金的员工姓名（需要用到子查询）
5、  算出每个职位的员工数和最低工资
6、  算出每个部门,，每个职位的平均工资和平均奖金(平均值包括没有奖金)，如果平均奖金大于300，显示“奖金不错”，如果平均奖金100到300，显示“奖金一般”，如果平均奖金小于100，显示“基本没有奖金”，按部门编号降序，平均工资降序排列
7、  列出员工表中每个部门的员工数，和部门no
8、  得到工资大于自己部门平均工资的员工信息（需要用到子查询）
9、  分组统计每个部门下，每种职位的平均奖金（也要算没奖金的人）和总工资(包括奖金)
*/

1、select avg(sal) from emp where sal>500 group by deptno;
2、select deptno,avg(sal) from emp group by deptno having avg(sal)>500;
3、select max(comm) from emp where deptno=30;
4、select ename from emp where comm = (select max(comm) from emp where deptno = 30);
5、select job,count(*),min(sal) from emp group by job;
6、select deptno,job,avg(sal),case when avg(nvl(comm,0))>300 then '奖金不错'
                                                   when avg(nvl(comm,0)) between 100 and 300 then '奖金一般' 
                                                     when avg(nvl(comm,0))<100 then '基本没有奖金' end 奖金情况 
                                                       from emp group by deptno,job order by deptno desc,avg(sal) desc;
7、select deptno,count(*) from emp group by deptno;       
8、select * from emp e1,(select deptno,avg(sal) as a from emp group by deptno) e2 
       where e1.deptno = e2.deptno and e1.sal>e2.a;
--select * from emp e1 where sal>(select avg(sal) from emp e2 where e1.deptno = e2.deptno);
9、select deptno,job,avg(nvl(comm,0)),sum(sal+nvl(comm,0)) from emp group by deptno,job;                                                

