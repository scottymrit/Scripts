select sum(BYTES/1024/1024) as mb, segment_name from user_segments
    where segment_type = 'LOBSEGMENT'
    group by segment_name order by mb desc
    
    
select * from user_segments
    where tablespace_name like 'PATENT_DEV%'
    order by bytes desc
    

select * from user_segments
    order by bytes desc


select distinct segment_type from user_segments
