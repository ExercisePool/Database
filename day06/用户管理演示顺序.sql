--����һ���û�
create user liumingcheng identified by a888888;

--��ʱ���ܵ�¼����Ϊû�е�¼��Ȩ��
--���ͽ�ɫ�ĺ��壺һ��Ȩ��
--��������û����и����ɫȨ��
grant connect,resource to liumingcheng;

--����޸�����
alter user liumingcheng identified by aaaaaa;

--��ιر��û�
alter user liumingcheng account lock;

--��ο����û�
alter user liumingcheng account unlock;

--ɾ���û�
drop user liumingcheng cascade; 

--����Ȩ��
grant all on scott.emp to liumingcheng;

--Ȩ���ջ�
revoke  all on scott.emp from liumingcheng;

--�鿴Ȩ��
select * from user_sys_privs;
