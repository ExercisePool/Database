/*
1��  ѡ���ڲ���30��Ա����������Ϣ
2��  �г�ְλΪ��MANAGER����Ա���ı�ţ�����
3��  �ҳ�������ڹ��ʵ�Ա��
4��  �ҳ�ÿ��Ա������͹��ʵ��ܺ�
5��  �ҳ�����10�еľ���(MANAGER)�Ͳ���20�е���ͨԱ��(CLERK)
6��  �ҳ�����10�мȲ��Ǿ���Ҳ������ͨԱ�������ҹ��ʴ��ڵ���2000��Ա��
7��  �ҳ��н����Ա���Ĳ�ͬ����
8��  �ҳ�û�н�����߽������500��Ա��
9��  ��ʾ��Ա������������������ޣ������ϵĹ�Ա������ǰ��
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
