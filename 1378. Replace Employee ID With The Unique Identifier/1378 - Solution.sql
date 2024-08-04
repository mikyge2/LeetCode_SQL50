select unique_id, name from Employees left join EmployeeUNI on Employees.id=EmployeeUNI.id
-- Key: Use 'left join' to specify all values of the first table and Use 'on' when joining tables
