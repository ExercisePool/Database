--ɾ����ͼ
drop view myview;
--������ͼ
create view myview as select empno,ename,job,deptno from emp;
--�鿴��ͼ
select * from myview;
--��ԭ��ͼ�����ֶε��޸�
drop view myview;
create view myview as select empno,ename,job,sal,deptno from emp;
--��ݵĶ�ԭ��ͼ���޸�
create or replace view myview as select empno,ename,job,deptno from emp;

--��ͼ�����ݱ䶯
create or replace view myview as select empno,ename,job,deptno from emp1 where deptno = 20;

--�����ͼ�Ĵ������������޸�
update myview set deptno=10 where empno=7369;

--�鿴�������ͼ��ĸ��
select * from emp1;

--���ֶ���ͼ���޸ķ�Ӧ����ĸ�����棬�������ã�������ͼ���޸�,���һ��with check option�����
create or replace view myview as select empno,ename,job,deptno from emp1 where deptno = 20 
       with check option;
       
--�ٶ���ͼ�Ĵ������������޸�
update myview set deptno=10 where empno=7566;

--���ֲ������޸���ͼ�Ĵ��������ˣ���ô���������޸�����������
update myview set ename='������' where empno=7566;

--���ֿ����޸����������ݣ������Ļ�����������ͼ��Ҫ����ô������ĩβ���һ�����with read only
create or replace view myview as select empno,ename,job,deptno from emp1 where deptno = 20 
        with read only;
        
--�ٳ������ܲ����޸���������
update myview set ename='ССǿ' where empno=7566;

--�����Ѿ��ɹ��Ĳ������޸����������ݣ���ô���������ܲ��ܸ��أ�
update myview set deptno = 10 where empno=7566;

