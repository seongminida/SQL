--������� �Ի��Ͽ��� �Ի�⵵�� �Ի� ���� ����ϴ� ������\
select * from emp;
select ename, substr(hiredate,1,2) as "�⵵" , 
substr(hiredate,4,2) as "��", 
substr(hiredate, 7,2) as "��" 
from emp;

-- 9���� �Ի��� ����� ����ϴ� ������
select ename from emp where substr(hiredate, 4,2) = '09';

-- LTRIM/RTRIM(��������)
select ltrim('   �ȳ��ϼ���') from dual;
select rtrim('�ȳ��ϼ���   ') from dual;
select trim('   �ȳ��ϼ���   ')from dual;

--��¥ �Լ�
--sysdate ���糯¥�� ��ȯ�ϴ� �Լ��̴�.
select sysdate from dual;

select sysdate-1 ����, sysdate ����, sysdate+1 ���� from dual;

--�� �������� �ٹ��� �������� ���ϴ� ������
--months_between �� ��¥ ������ �������� ���ϴ� �Լ��̴�.
select ename, sysdate, round(months_between(sysdate,hiredate))  �ٹ������� from emp;

-- add_months Ư�� �������� ���� ��¥�� ���ϴ� �Լ��̴�.
select ename, hiredate, add_months(hiredate,4) from emp;

-- ������ �������� ���� ����� ������ �������� �������� �˾ƺ��� ������
select sysdate, next_day(sysdate,'������') as "������ ������" from dual;

--�Ի��� ���� ������ ���� ���ϴ� ������
select hiredate, last_day(hiredate) from emp;
--�̹��� ������ ��
select last_day(sysdate) from dual;
--22/02���� ��������
select last_day('22/02/01') from dual;

--����ȯ
--���� ��¥�� ���������� ��ȯ�Ͽ� ����ϴ� ������
select sysdate, to_char(sysdate, 'YYYY-MM-DD HH24:MI:SS') from dual;

select hiredate, to_char(hiredate, 'YYYY/MM/DD DAY') from emp;

-- �� ������ ��ȭ��ȣ�� �տ� �� ǥ�ø� ���̰� õ �������� �޸��� �ٿ��� ����ϴ� ������(��: 1,230,000)
-- L�� ����ǥ��
select ename, sal, to_char(sal, 'L999,999') from emp;

--�������� ��¥������ ��ȯ�ϴ� �Լ��̴�.
--TO_DATE = �������� ��¥������ ��ȯ�ϴ� �Լ�
select ename, hiredate from emp where hiredate=to_date (19810220,'YYYYMMDD');

--���� ������ �������� ���� ��¥���� 2016/01/01�� �� ����� ����ϴ� ������
select round(sysdate - to_date('2016/01/01', 'YYYY/MM/DD')) from dual;

--TO NUMBER
select to_number('20,000', '99,999') - to_number('10,000', '99,999') from dual;

--NVL�Լ� = null value; = nvl(comm,0) comm�� null�� ������ 0�� ����־��.
--��) ��������� �ϴ� ������
select ename, sal, comm, sal*12+comm as "����", sal*12+nvl(comm,0) as "����2" from emp;

--between
--salay�� 2000~5000 ����
select * from emp where sal>2000 and sal<5000;
select * from emp where sal between 2000 and 5000;

--����� 82�⵵�� �Ի��� �����?
select * from emp where hiredate between '82/01/01' and '82/12/31';
select * from emp where hiredate>='82/01/01' and hiredate<='82/12/31';

--1981�� 2�� 20��~1981�� 5�� 1�Ͽ� �Ի��� ����� �̸�, ���� �� �Ի����� ����϶�.
select * from emp;
select * from emp where hiredate between '1981/02/20' and '1981/05/01';

select * from emp where sal in (800, 1600, 950);

-- 10���μ� �Ǵ� 20���μ� �Ǵ� 30�� �μ��� ���ϴ� �����?
select * from emp where deptno in(10,20,30);

-- 10�� �� 30�� �μ��� ���ϴ� ��� ����� �̸��� �μ� ��ȣ�� ����ϵ�, �̸��� ���ĺ������� �����Ͽ� ����϶�.
select ename, deptno from emp where deptno in (10,30) order by ename;