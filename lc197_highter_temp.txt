# Solution1: Use self join and to_days()
select E2.id 
from Weather E1, Weather E2
where (to_days(E1.recordDate) + 1 = to_days(E2.recordDate)) and (E1.temperature < E2.temperature)
      
      
# Solution2: Use datediff function     
SELECT w1.id
FROM Weather AS w1 , Weather AS w2
WHERE w1.Temperature > w2.Temperature AND DATEDIFF(w1.recordDate , w2.recordDate) = 1

