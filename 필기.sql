insert into category_tb
select
	distinct
    0,
    카테고리
from
	books;
-----------------------
    insert into author_tb
select
	distinct
    0,
    저자명
from
	books;
-----------------------  
    insert into publisher_tb
select
	distinct
    0,
	출판사
from
	books;
    
------------------------    
select
	도서명,
    저자명,
    isbn,
    표지url
from
	books
group by
	도서명,
    저자명,
    isbn,
	표지url;

---------------- category_tb에 있는 category_name을 행 옆에 붙이기
SELECT 
	* 
FROM 
	books
    left outer join category_tb on category_name = 카테고리;
    