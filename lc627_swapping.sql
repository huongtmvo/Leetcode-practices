UPDATE salary SET sex = IF(sex = 'm', 'f', 'm')


update salary
set sex = (
    case when sex = 'm' then 'f'
    else 'm' end)
    
