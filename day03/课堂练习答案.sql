/*
1��  ����ͳ�Ƹ������¹���>500��Ա����ƽ������
2��  ͳ�Ƹ�������ƽ�����ʴ���500�Ĳ���
3��  �������30�еõ���ཱ���Ա������
4��  �������30�еõ���ཱ���Ա����������Ҫ�õ��Ӳ�ѯ��
5��  ���ÿ��ְλ��Ա��������͹���
6��  ���ÿ������,��ÿ��ְλ��ƽ�����ʺ�ƽ������(ƽ��ֵ����û�н���)�����ƽ���������300����ʾ�����𲻴������ƽ������100��300����ʾ������һ�㡱�����ƽ������С��100����ʾ������û�н��𡱣������ű�Ž���ƽ�����ʽ�������
7��  �г�Ա������ÿ�����ŵ�Ա�������Ͳ���no
8��  �õ����ʴ����Լ�����ƽ�����ʵ�Ա����Ϣ����Ҫ�õ��Ӳ�ѯ��
9��  ����ͳ��ÿ�������£�ÿ��ְλ��ƽ������ҲҪ��û������ˣ����ܹ���(��������)
*/

1��select avg(sal) from emp where sal>500 group by deptno;
2��select deptno,avg(sal) from emp group by deptno having avg(sal)>500;
3��select max(comm) from emp where deptno=30;
4��select ename from emp where comm = (select max(comm) from emp where deptno = 30);
5��select job,count(*),min(sal) from emp group by job;
6��select deptno,job,avg(sal),case when avg(nvl(comm,0))>300 then '���𲻴�'
                                                   when avg(nvl(comm,0)) between 100 and 300 then '����һ��' 
                                                     when avg(nvl(comm,0))<100 then '����û�н���' end ������� 
                                                       from emp group by deptno,job order by deptno desc,avg(sal) desc;
7��select deptno,count(*) from emp group by deptno;       
8��select * from emp e1,(select deptno,avg(sal) as a from emp group by deptno) e2 
       where e1.deptno = e2.deptno and e1.sal>e2.a;
--select * from emp e1 where sal>(select avg(sal) from emp e2 where e1.deptno = e2.deptno);
9��select deptno,job,avg(nvl(comm,0)),sum(sal+nvl(comm,0)) from emp group by deptno,job;                                                

