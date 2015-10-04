/*
           ��ϰ����ѯ��ÿ���˵������������Լ����쵼�������Լ����ʣ�
          
           ��ϰ�������������м������Ǹ��ԵĲ������ƣ�
           
           ��ϰ����ѯ��ÿ����Ա�����������ʡ��������ơ��������ڵȼ��Լ��쵼���������쵼
                  �Ĺ��ʺ��쵼�������ڹ�˾�ĵȼ���

		   ��ϰ��Ҫ�����������ơ����ŵ�Ա���������ŵ�ƽ�����ʺͲ��ŵ���������Ա��������
				 
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
