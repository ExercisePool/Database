/*
1�� Table:   ��Ա�� emp1�� 
id   name 
1 a 
2 b 
3 c 
4  d 
 
Table:( �Ա� sext) 
 
id sex 
1 �� 
4 Ů 
5 �� 
 
�ҳ�������д�Ա��Ա��
2���г�Ա������ÿ�����ŵ�Ա�������Ͳ��ű��
3���ҳ����ʱ�jones���Ա��  
4���г�����Ա�������������ϼ�������
5����ְλ���飬�ҳ�ƽ��������ߵ�����ְλ
6�����ҳ����ڲ���20���ұȲ���20���κ�һ���˹��ʶ��ߵ�Ա����������������
7�����ҳ�ְλ��'MARTIN'  ����'SMITH'һ����Ա����ƽ������
8�����ҳ��������κβ��ŵ�Ա��*/

1��select * from emp1 where id not in (select id from sext);
2��select deptno,count(*) from emp group by deptno;
3��select * from emp where sal>(select sal from emp where lower(ename)='jones');
4��select e1.ename as lower ,e2.ename as upper from emp e1,emp e2 where e1.mgr 
= e2.empno;
5��select job from (select job,avg(sal) a from emp group by job order by a desc ) where rownum<3;
6��select e.ename,d.dname from emp e,dept d 
         where e.sal>all(select sal from emp where deptno = 20) 
               and d.deptno<>20 
                   and e.deptno = d.deptno;
7��select avg(sal) from emp where job in (select job from emp where ename='MARTIN' or ename='SMITH');
8��select * from emp where deptno is null or deptno not in(select deptno from dept);
