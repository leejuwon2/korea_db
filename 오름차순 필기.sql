-- course_name 과 major_name을 합하고 id는 오름차순 name은 내림차순으로 정렬하시오
-- rank() 공동 1등이 나오면 다음 등수는 3
-- dense_rank() 공동 1등이 나오면 다음 등수는 2 
select
	dense_rank() over(order by `id`) as num,
    name_tb.*
from
(select
	course_id as `id`,
	course_name as `name`
from
	course_tb
union
select
	major_id,
    major_name
from
	major_tb) as name_tb;
    
    
# where 와일드 카드(like)
-- % @ % : @ 앞 뒤로 아무 글자든 상관 없음
-- _ @ _ : _칸에 맞는 글자수를 가진 값을 포함
select
	*
from
	instructor_tb
where
	instructor_name like '수';
