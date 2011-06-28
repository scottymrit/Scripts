select prs.payrolluuid, prs.locationUUID, prd.columnTypeUUID, sum(prd.columnvalue)
  from Payrolls as prs 
 right outer join Employees as emps
    on prs.PayrollUUID = emps.PayrollUUID
 right outer join PayrollData as prd
    on emps.employeeuuid = prd.employeeuuid
 right outer join ColumnTypes ct
    on prd.columnTypeUUID = ct.columnTypeUUID
 where prd.columnTypeUUID is not null
 group by prs.payrolluuid, prs.locationUUID, prd.columnTypeUUID; 
  
  
CREATE VIEW dbo.PayrollTotals AS 
select prs.payrolluuid, prs.locationUUID, prd.columnTypeUUID, sum(prd.columnvalue) as TotalValue
  from Payrolls as prs 
 right outer join Employees as emps
    on prs.PayrollUUID = emps.PayrollUUID
 right outer join PayrollData as prd
    on emps.employeeuuid = prd.employeeuuid
 right outer join ColumnTypes ct
    on prd.columnTypeUUID = ct.columnTypeUUID
 where prd.columnTypeUUID is not null
 group by prs.payrolluuid, prs.locationUUID, prd.columnTypeUUID; 