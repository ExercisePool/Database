/*
1.scott���洴��һ���� 
 emp1 
 empno number(10) 
 ename varchar2(50) 
2.���һ���ֶ� 
 sal number(10,2) 
3.�޸��ֶ�   ename varchar2(100) 
4.ɾ���ֶ�sal 
5.�ѱ�emp1�ĳ�emp2                                                                                                                       
6.ɾ����emp2 
7.����һ����emp�ṹһ���ı���ͬʱ���빤�ʴ���1000������ 
8.��ձ����ݣ���truncate) 
*/
create table scott.emp1(empno number(10),ename varchar2(50));
alter table emp1 add(sal number(10,2));
alter table emp1 modify(ename varchar2(100));
alter table emp1 drop column sal;
rename emp1 to emp2;
drop table emp2;
create table emp1 as (select * from emp where sal>1000);
truncate table emp1;
