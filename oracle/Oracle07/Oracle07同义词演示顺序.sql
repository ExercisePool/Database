--����һ����
create table magic(id number,name varchar2(10));
insert into magic values(1,'aa');
insert into magic values(2,'bb');
--�鿴�����������û������
select * from magic;
--�ύ
commit;

--����˽�е�ͬ���
--create synonym +ͬ�����+for+�û���.������

create synonym magic1 for magic.magic;

--�ڱ��û��Լ������û���ȥ�鿴ͬ����ܷ�ɹ���
select * from magic1;

--�������ڱ�����ʹ�ã����ǲ�������������ʹ�ã�����û�ã�ɾ��
drop synonym magic1;

--�������е�ͬ���
--create public synonym +ͬ�����+for+�û���.������

create public synonym magic for magic.magic;

--�ڱ��û��Լ������û���ȥ�鿴ͬ����ܷ�ɹ���
select * from magic;

--�ܹ������ˣ�������ǵĲ��ܷ��ʵĻ����ͼ�һ��Ȩ��
grant select/delete on magic to scott;
