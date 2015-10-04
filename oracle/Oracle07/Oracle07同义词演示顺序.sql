--创建一个表
create table magic(id number,name varchar2(10));
insert into magic values(1,'aa');
insert into magic values(2,'bb');
--查看下这个表中有没有数据
select * from magic;
--提交
commit;

--创建私有的同义词
--create synonym +同义词名+for+用户名.表名；

create synonym magic1 for magic.magic;

--在本用户以及其他用户下去查看同义词能否成功；
select * from magic1;

--发现能在本表中使用，但是不能在其他表中使用，所以没用，删掉
drop synonym magic1;

--创建公有的同义词
--create public synonym +同义词名+for+用户名.表名；

create public synonym magic for magic.magic;

--在本用户以及其他用户下去查看同义词能否成功；
select * from magic;

--能够访问了，如果你们的不能访问的话，就加一个权限
grant select/delete on magic to scott;
