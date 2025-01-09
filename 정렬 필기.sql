#select

select * from
	student_tb;

#where조건
select
	*
from
	student_tb
where
-- 	student_year =3 or student_year = 4;
-- 	student_year in(3, 4);
--     student_year > 2 and student_year < 5;
--     student_year >= 3 and student_year <= 4;
-- 2부터 4 까지
    student_id between 2 and 4;

select 
	10 as num,
	20 as num2,
	'이름' as name
-- 중복된 영역의 집합 union 위쪽과 아래쪽의 컬럼 개수가 같아야 함 다르면 오류
union 
select
	30 as num,
    40 as num2,
    '이름2' as name;
    
select
	1 as id,
    '월' as day
union all
select
	2 as id,
    '화' as day
union all
select
	3 as id,
    '수' as day;
    
    
select
	row_number() over(order by name) as 'index',
	name
from
	(select
		student_name as name
	from
		student_tb
	union
    select
		instructor_name
	from
		instructor_tb) as name_tb;


select
	row_number() over(order by student_namestudent_tb)as num,
	student_name 
from
	student_tb
union
select
	row_number() over(order by instructor_name) + 4 as num, 
	instructor_name
from
	instructor_tb;
    
select
	*
from
	student_tb
order by
	student_year desc, -- asc 오름차순정렬 , desc 내립차순 정렬
	student_name; -- 학년먼저 정렬 후 이름정렬

select
	student_id
    student_name
from
	student_tb
order by
	student_id,
    student_name;
    

    



