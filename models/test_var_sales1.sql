select * from {{source('datafeed_shared_schema3','sales1')}}
where product_name ='{{var('prod_name')}}'
or
product_name='{{var('prod_name1')}}'
or
product_name='{{var('prod_name2')}}'
or
product_name='{{var('prod_name3')}}'
or
product_name='{{var('prod_name4')}}'