with examples as (
select 50 as response_rate, 'fair' as expected union all
select 60, 'good' union all select 94, 'good' union all
select 95, 'very good' union all select 96, 'very good' union all
select null, 'unknown'
)
select * from examples where {{ response_quality('response_rate') }} <> expected
