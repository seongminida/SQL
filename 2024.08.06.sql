--이름이 F로 시작하는 사람을 찾는 쿼리문
select * from emp where ename like 'F%';

--위치에 상관없이 이름중에 A가 들어있는 사람을 찾는 쿼리문
select *  from emp where ename like '%A%';

--이름이 N으로 끝나는 사람을 찾는 쿼리문
select *  from emp where ename like '%N';

--이름의 두번째 글자가 A인 사원을 찾는 쿼리문
select *  from emp where ename like '_A%';

--이름에 A를 포함하지 않는 사람만 검색하는 쿼리문
select * from emp where ename not like '%A%';

--커미션(COMM)을 받지않는 사원을 검색하는 쿼리문
select * from emp where comm is null;

--정렬 ORDER BY절
--사원들의 급여를 오름차순으로 정렬하는 쿼리문

select * from emp order by sal asc;

--가장 최근에 입사한 사원부터 출력하는 쿼리문
select * from emp order by hiredate desc;

--부서번호가 20번인 사원을 월급순으로 출력하시오
select * from emp where deptno=20 order by sal desc;

-- 문자 정렬시 사전순
select * from emp order by ename desc; 

-- comm이 not null인 사원들을 comm순으로 나오게 하시오
select * from emp where comm is not null order by comm desc;

--DISTINCT

--사원들이 소속되어 있는 부서의 번호를 출력하는 쿼리문(중복제거)
select DISTINCT deptno from emp;

select DISTINCT job from emp;

--별칭(alias) 

select ename as "employee name" from emp;

-- sal에서 10% 증가된 금액 뽑아내기
select ename, sal, sal + (sal*0.1)as "보너스" from emp;

--DUAL
-- 26*32
select 25*32 from dual;
select sysdate from dual;
select * from dual;
desc dual

-- 10에대한 절대값을 구하는 쿼리문
select -10, abs(-10) from dual;

--ROUND
--특정 자릿수에서 반올림하는 함수

select 34.5678, round(34.5678,1)  from dual;
select 34.5678, round(34.5678,2)  from dual;

--문법, 함수, 칼럼이름, 테이블이름 대소문자 안가림
--데이터는 대소문자 가림
--버림
select 34.5678, floor(34.5678)  from dual;

-- 나누기 연산을 한 후 나머지를 결과로 되돌려주는 함수 = 8%3
select mod(27,2), mod(27,5) from dual;


--문자 처리 함수
--대문자로 변환
select upper('abcd') from dual;
select lower('ABCD') from dual;

--이니셜만 대문자로 변환하는 함수
select initcap('abcd') from dual;
select initcap('ABCD')from dual;

--문자 길이를 구하는 함수
select length('Oracle'), length('오라클') From dual;

--SUBSTR 오라클에서 인덱스는 0이아닌 1에서부터 시작한다.
--시작위치부터 선택개수만큼의 문자를 추출한다.
select SUBSTR('안녕하세요 메롱님', 4, 4) from dual;

select ename, substr(hiredate, 1,2) as 년도, substr(hiredate, 4,2) as 달 from emp;