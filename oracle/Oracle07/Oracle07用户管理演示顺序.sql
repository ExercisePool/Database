--创建一个用户
create user liumingcheng identified by a888888;

--此时不能登录，因为没有登录的权限
--解释角色的含义：一组权限
--对这个新用户进行赋予角色权限
grant connect,resource to liumingcheng;

--如何修改密码
alter user liumingcheng identified by aaaaaa;

--如何关闭用户
alter user liumingcheng account lock;

--如何开启用户
alter user liumingcheng account unlock;

--删掉用户
drop user liumingcheng cascade; 

--授予权限
grant all on scott.emp to liumingcheng;

--权限收回
revoke  all on scott.emp from liumingcheng;

--查看权限
select * from user_sys_privs;
