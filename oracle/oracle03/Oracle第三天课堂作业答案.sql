/*1���ҳ�25 ��ǰ�͵�Ա�� 
2������Ա������ǰ����Dear ,������������ĸ��д 
3���ҳ�����Ϊ5 ����ĸ��Ա��   
4���ҳ������в���R �����ĸ��Ա��  
5����ʾ����Ա���������ĵ�һ����   
6������һ����Ϊ30 �죬�ҳ�����Ա������н������С��  
7���ҵ�2 �·��ܹ͵�Ա��   
8���г�Ա�����빫˾������(�������룩  
9���ֱ���case ��decode �����г�Ա�����ڵĲ��ţ�deptno=10 ��ʾ'����10', 
 deptno=20 ��ʾ'����20' 
 deptno=30 ��ʾ'����30' 
 deptno=40 ��ʾ'����40' 
 ����Ϊ'��������'*/
 
 select * from emp where months_between(sysdate,hiredate)>=25*12 ;
 select concat('Dear',concat(' ',initcap(ename))) ename from emp;
 select * from emp where length(ename)=5;
 select * from emp where ename like '_____';
 select * from emp where ename not like '%R%';
 select substr(ename,0,1) ename from emp; 
 select ename,trunc(sal/30) daysal from emp;
 select * from emp where to_char(hiredate,'mm') = 02;
 select to_char(hiredate,'month') from emp;
 select round(months_between(sysdate,hiredate)*30) total1,round(months_between(sysdate,hiredate)/12*365) total from emp;
 
