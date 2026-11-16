with examples as (
select 99.99 as price, 'low' as expected union all select 100, 'medium' union all
select 200, 'medium' union all select 200.01, 'high' union all select null, 'unknown'
)
select * from examples where {{ tag('price') }} <> expected
