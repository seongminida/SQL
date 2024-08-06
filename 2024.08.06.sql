--�̸��� F�� �����ϴ� ����� ã�� ������
select * from emp where ename like 'F%';

--��ġ�� ������� �̸��߿� A�� ����ִ� ����� ã�� ������
select *  from emp where ename like '%A%';

--�̸��� N���� ������ ����� ã�� ������
select *  from emp where ename like '%N';

--�̸��� �ι�° ���ڰ� A�� ����� ã�� ������
select *  from emp where ename like '_A%';

--�̸��� A�� �������� �ʴ� ����� �˻��ϴ� ������
select * from emp where ename not like '%A%';

--Ŀ�̼�(COMM)�� �����ʴ� ����� �˻��ϴ� ������
select * from emp where comm is null;

--���� ORDER BY��
--������� �޿��� ������������ �����ϴ� ������

select * from emp order by sal asc;

--���� �ֱٿ� �Ի��� ������� ����ϴ� ������
select * from emp order by hiredate desc;

--�μ���ȣ�� 20���� ����� ���޼����� ����Ͻÿ�
select * from emp where deptno=20 order by sal desc;

-- ���� ���Ľ� ������
select * from emp order by ename desc; 

-- comm�� not null�� ������� comm������ ������ �Ͻÿ�
select * from emp where comm is not null order by comm desc;

--DISTINCT

--������� �ҼӵǾ� �ִ� �μ��� ��ȣ�� ����ϴ� ������(�ߺ�����)
select DISTINCT deptno from emp;

select DISTINCT job from emp;

--��Ī(alias) 

select ename as "employee name" from emp;

-- sal���� 10% ������ �ݾ� �̾Ƴ���
select ename, sal, sal + (sal*0.1)as "���ʽ�" from emp;

--DUAL
-- 26*32
select 25*32 from dual;
select sysdate from dual;
select * from dual;
desc dual

-- 10������ ���밪�� ���ϴ� ������
select -10, abs(-10) from dual;

--ROUND
--Ư�� �ڸ������� �ݿø��ϴ� �Լ�

select 34.5678, round(34.5678,1)  from dual;
select 34.5678, round(34.5678,2)  from dual;

--����, �Լ�, Į���̸�, ���̺��̸� ��ҹ��� �Ȱ���
--�����ʹ� ��ҹ��� ����
--����
select 34.5678, floor(34.5678)  from dual;

-- ������ ������ �� �� �������� ����� �ǵ����ִ� �Լ� = 8%3
select mod(27,2), mod(27,5) from dual;


--���� ó�� �Լ�
--�빮�ڷ� ��ȯ
select upper('abcd') from dual;
select lower('ABCD') from dual;

--�̴ϼȸ� �빮�ڷ� ��ȯ�ϴ� �Լ�
select initcap('abcd') from dual;
select initcap('ABCD')from dual;

--���� ���̸� ���ϴ� �Լ�
select length('Oracle'), length('����Ŭ') From dual;

--SUBSTR ����Ŭ���� �ε����� 0�̾ƴ� 1�������� �����Ѵ�.
--������ġ���� ���ð�����ŭ�� ���ڸ� �����Ѵ�.
select SUBSTR('�ȳ��ϼ��� �޷մ�', 4, 4) from dual;

select ename, substr(hiredate, 1,2) as �⵵, substr(hiredate, 4,2) as �� from emp;