SELECT 
	* 
FROM 
	books b
    left outer join category_tb ct on ct.category_name = b.카테고리
	left outer join author_tb at on at.author_name = b.저자명
    left outer join publisher_tb pt on pt.publisher_name = b.출판사;
 
update
books b
    left outer join category_tb ct on ct.category_name = b.카테고리
	left outer join author_tb at on at.author_name = b.저자명
    left outer join publisher_tb pt on pt.publisher_name = b.출판사
set
	카테고리 = ct.category_id,
    저자명 = at.author_id,
    출판사 = pt.publisher_id;
