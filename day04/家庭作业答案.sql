/*
1.scott下面创建一个表 
 emp1 
 empno number(10) 
 ename varchar2(50) 
2.添加一个字段 
 sal number(10,2) 
3.修改字段   ename varchar2(100) 
4.删除字段sal 
5.把表emp1改成emp2                                                                                                                       
6.删除表emp2 
7.创建一个和emp结构一样的表，并同时插入工资大于1000的数据 
8.清空表数据（用truncate) 
*/
create table scott.emp1(empno number(10),ename varchar2(50));
alter table emp1 add(sal number(10,2));
alter table emp1 modify(ename varchar2(100));
alter table emp1 drop column sal;
rename emp1 to emp2;
drop table emp2;
create table emp1 as (select * from emp where sal>1000);
truncate table emp1;
