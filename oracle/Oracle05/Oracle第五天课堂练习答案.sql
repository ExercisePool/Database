/*
3���г�û�ж�Ӧ���ű���Ϣ�����й�Ա�������������Լ����ź�
4�����ҹ�����1000��3000֮��Ĺ�Ա���ڲ��ŵ�������Ա��Ϣ
5����Ա��˭�Ĺ�����ߡ���ʹ��rownum����
6����Ա��˭�Ĺ��ʵڶ��ߣ����ǲ��е�һ���������δ�����
*/
select e.ename,e.job,e.deptno from emp e,dept d where e.deptno(+) = d.deptno and e.deptno not in
(select deptno from dept);
select * from emp where deptno in (select distinct deptno from emp where sal between 1000 and 3000);
select ename from (select * from emp order by sal desc) where rownum=1;
select ename, sal from (select ename,sal from (select * from emp order by sal desc) where rownum<3 order by sal) where rownum<2;
