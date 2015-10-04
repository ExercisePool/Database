/*
  1.����һ�ű�student 
 id     number 
 name   varchar2(10) 
 age     number(10) 
 tel    varchar2��10�� 
 ��id�ֶ��������Լ�� 
 ��name�ֶ���ӷǿ�Լ�� 
 ��age�ֶ����checkԼ����age�������18��)                                                                                                                                                                                                                                                                                              
��tel ���Ψһ  �ǿ�  Լ�� */

create table student(id number,name varchar2(10) not null,age number(10),tel varchar2(10) not null);
alter table student add constraint student_id_pk primary key(id);
alter table student add constraint student_age_ck check(age >18);
alter table student add constraint student_tel_uk unique(tel);

/*
2.����һ��ѧԱ��Ȥ���ñ�  hobby 
 id number(10) 
 hobby_name varchar2(10) 
 sid number --ѧ��id 
 ��sid�ֶ�������Լ��������Ҫ������ɾ�� 
 
3.ɾ����student����tel�ֶε�ΨһԼ������д���鿴�ñ�Լ����sql) 
4.�ֶ����student����tel�ֶε�ΨһԼ����Լ����Ϊ��MY_CONSTRAINT_1) 
5.����Լ��MY_CONSTRAINT_1 
6.����Լ��MY_CONSTRAINT_1 
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

