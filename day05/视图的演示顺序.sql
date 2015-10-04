--删除视图
drop view myview;
--创建视图
create view myview as select empno,ename,job,deptno from emp;
--查看视图
select * from myview;
--对原视图进行字段的修改
drop view myview;
create view myview as select empno,ename,job,sal,deptno from emp;
--便捷的对原视图的修改
create or replace view myview as select empno,ename,job,deptno from emp;

--视图的数据变动
create or replace view myview as select empno,ename,job,deptno from emp1 where deptno = 20;

--针对视图的创建条件进行修改
update myview set deptno=10 where empno=7369;

--查看下这个视图的母表
select * from emp1;

--发现对视图的修改反应到了母表上面，这样不好，进行视图的修改,添加一个with check option的命令；
create or replace view myview as select empno,ename,job,deptno from emp1 where deptno = 20 
       with check option;
       
--再对视图的创建条件进行修改
update myview set deptno=10 where empno=7566;

--发现不能再修改视图的创建条件了，那么，尝试下修改其他的数据
update myview set ename='刘明城' where empno=7566;

--发现可以修改其他的数据，这样的话，不符合视图的要求，那么重新在末尾添加一行命令：with read only
create or replace view myview as select empno,ename,job,deptno from emp1 where deptno = 20 
        with read only;
        
--再尝试下能不能修改其他数据
update myview set ename='小小强' where empno=7566;

--发现已经成功的不让我修改其他的数据，那么创建条件能不能改呢？
update myview set deptno = 10 where empno=7566;

