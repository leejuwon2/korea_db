insert into data2_tb
values
(default, '111'),
(default, '222'),
(default, '333'),
(default, '444'),
(default, '555');

select
	*
from
	data2_tb;
    
    
insert into data1_tb
values
(default, 'hhh' ,6),
(default, 'iii' ,7); 

select
	*
from
	data1_tb
    left outer join data2_tb on data2_tb.data2_id = data1_tb.data2_id;
    
    
    
