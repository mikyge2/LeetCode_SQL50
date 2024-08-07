select e.name, b.bonus from Employee e left join Bonus b on e.empId=b.empId where b.bonus<1000 or b.bonus IS NULL 
-- Key: 'b.bonus IS NULL' will bring null bonus too which also means nonexistent bonus i.e 0
