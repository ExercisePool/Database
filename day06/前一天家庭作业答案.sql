/*
  1.创建一张表student 
 id     number 
 name   varchar2(10) 
 age     number(10) 
 tel    varchar2（10） 
 给id字段添加主键约束 
 给name字段添加非空约束 
 给age字段添加check约束（age必须大于18岁)                                                                                                                                                                                                                                                                                              
给tel 添加唯一  非空  约束 */

create table student(id number,name varchar2(10) not null,age number(10),tel varchar2(10) not null);
alter table student add constraint student_id_pk primary key(id);
alter table student add constraint student_age_ck check(age >18);
alter table student add constraint student_tel_uk unique(tel);

/*
2.创建一张学员兴趣爱好表  hobby 
 id number(10) 
 hobby_name varchar2(10) 
 sid number --学生id 
 给sid字段添加外键约束，并且要带级联删除 
 
3.删除掉student表中tel字段的唯一约束（先写出查看该表约束的sql) 
4.手动添加student表中tel字段的唯一约束（约束名为：MY_CONSTRAINT_1) 
5.禁用约束MY_CONSTRAINT_1 
6.启用约束MY_CONSTRAINT_1 
*/
create table hobby(id number(10),
                              hobby_name varchar2(10),
                              sid number,
                              constraint hobby_sid_fk foreign key(sid) references student(id));
                              
select * from user_constraints where TABLE_NAME='HOBBY';

alter table student drop constraint student_tel_uk;

alter table student add constraint MY_CONSTRAINT_1 unique(tel);

alter table student disable constraint MY_CONSTRAINT_1;

alter table student enable constraint MY_CONSTRAINT_1;

