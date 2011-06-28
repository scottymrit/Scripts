
CREATE VIEW dbo.vwPayrollTotals AS 

select prs.payrollDate, prs.locationuuid, prs.payrolluuid, tm.templateUUID, prd.columnTypeUUID, tm.ColumnPosition, ct.CanonicalName, sum(prd.columnvalue) as TotalValue
  from Payrolls as prs 
 right outer join Employees as emps
    on prs.PayrollUUID = emps.PayrollUUID
 right outer join PayrollData as prd
    on emps.employeeuuid = prd.employeeuuid
 right outer join ColumnTypes ct
    on prd.columnTypeUUID = ct.columnTypeUUID
 right outer join Templates as t
    on t.locationUUID = prs.locationUUID
 right outer join TemplateMaps tm
    on prd.columnTypeUUID = tm.ColumnTypeUUID
   and tm.TemplateUUID = t.templateUUID
 where prd.columnTypeUUID is not null
   and ct.CanonicalName is not null
   and tm.ColumnTypeUUID is not null
   and t.templateUUID is not null
 group by prs.payrollDate, prs.locationUUID, prs.payrolluuid, tm.templateUUID, prd.columnTypeUUID, tm.ColumnPosition, ct.CanonicalName;


select *

select ct.columnTypeUUID, t.LocationUUID, t.TemplateUUID, tm.TargetPosition
  from ColumnTypes ct, Templates t, templateMaps tm
 where tm.TemplateUUID = t.TemplateUUID
   and ct.ColumnTypeUUID = tm.ColumnTypeUUID
   and t.locationuuid is not null
 order by locationuuid, templateuuid, columnTypeuuid, targetPosition;

select *
  from TemplateMaps
where TemplateUUID = '222b756654644b7a829a2385e87ccea1' and ColumnTypeUUID = '21ac49bb467446fea45eef4b3fc62f8f';

delete from templateMaps 
 where templateuuid = '222b756654644b7a829a2385e87ccea1'
   and ColumnPosition = '4';
  
DROP VIEW dbo.vwPayrollTotals
select *
  from templateMaps
 order by ColumnTypeUUID;

Select * 
  from processingevents 
 order by EventTypeUUID;
 


-- delete from payrolls;
Update Payrolls set ProcessingStart = null, ProcessingStop = null;
delete from employees;
delete  from payrolldata;
delete from processingevents; 

INSERT INTO dbo.Payrolls(PayrollUUID, LocationUUID, Created, Uploaded, ProcessingStart, ProcessingStop, TemplateUUID, FileUNC, PayrollDate, ExportDate, CompletedDate, Reason) VALUES ('e15d7b83a1a34c239d4abf3885253da4', 'b98b0b4fcfd544528e28f55b06e53488  ', '2010-08-13 13:34:34.947', '2010-08-13 00:00:00.0', '2010-08-13 13:34:35.007', '2010-08-13 13:34:37.383', '6ad6c0bc809a44ec953e3f1ad98a8163  ', '\\\\Eisdc0\\Shared\\Public\\DTM\\test_spreadsheet_upload\validator_test_long.xls                                                                                                                                                                               ', '2010-08-11 00:00:00.0', null, null, '                                                                                                                                                                                                                                                               ');



select *
  from templates;
  
select *
  from payrolls;  

select *
  from payrolls;
  
select *
  from employees;
  
update employees set payrollUUID = 'db079ac437ff4ec1893014b5bf168f76';
  
  

  
INSERT INTO 
       payrolls(PayrollUUID, LocationUUID, Created, Uploaded, ProcessingStart, ProcessingStop, TemplateUUID, FileUNC, PayrollDate, ExportDate, CompletedDate, Reason) 
VALUES ('db079ac437ff4ec1893014b5bf168f77  ', '1bff783173174e4db67d3bc2dd5e40f9  ', '2010-08-02 09:13:38.397', '2010-08-02 00:00:00.0', '2010-08-18 10:43:43.093', '2010-08-18 10:43:50.2', '42a07d359b6f48f1964216e63af94d4b  ', 'C:\PayrollUploads\DTM\UploadedPayrolls\120609_to_121909_wilkins2.xls                                                                                                                                                                                           ', '2010-07-26 00:00:00.0', '2010-07-27 00:00:00.0', '2010-07-27 00:00:00.0', null);



select *
  from processingevents;

INSERT INTO employees
       (EmployeeUUID, PayrollUUID, SocialSecurityNumber, FullName, Address1, Address2, City, State, Zip, BirthDate, HireDate, TerminationDate, ReHireDate, CompanyDivision, Hours, YTDGrossWages, YTDHours, FirstName, LastName, MiddleName, SubmissionId, Location) 
VALUES ('f21192573fe84d9d9e11eadd7e318f1b', 'db079ac437ff4ec1893014b5bf168f76', '121-21-2121', 'CHRISTIAN  ALBERICO           ', '109 HAWTHORNE ROAD            ', '                              ', 'PITTSBURGH          ', 'PA', 'A01A01    ', '08/31/1991', '07/26/2009', '07/25/2009', null, null, null, null, null, 'CHRISTIAN                     ', 'ALBERICO                      ', '                              ', 0, '5         ');

INSERT INTO employees
       (EmployeeUUID, PayrollUUID, SocialSecurityNumber, FullName, Address1, Address2, City, State, Zip, BirthDate, HireDate, TerminationDate, ReHireDate, CompanyDivision, Hours, YTDGrossWages, YTDHours, FirstName, LastName, MiddleName, SubmissionId, Location) 
VALUES ('f21192573fe84d9d9e11eadd7e318f1c', 'db079ac437ff4ec1893014b5bf168f78', '121-21-2121', 'CHRISTIAN  ALBERICO           ', '109 HAWTHORNE ROAD            ', '                              ', 'PITTSBURGH          ', 'PA', 'A01A01    ', '08/31/1991', '07/26/2009', '07/25/2009', null, null, null, null, null, 'CHRISTIAN                     ', 'ALBERICO                      ', '                              ', 0, '5         ');

  
INSERT INTO payrolldata
       (PayrollDataItemUUID, EmployeeUUID, DisplayName, ColumnTypeUUID, ColumnValue, TargetPosition) 
VALUES ('0789dcbd3ef64ea1bcc29276ea92693e', 'f21192573fe84d9d9e11eadd7e318f1b', 'Loan', 'be35e59aa6c2479d86e8d4f5dab2fe9d  ', 0.00, 1);
INSERT INTO payrolldata
       (PayrollDataItemUUID, EmployeeUUID, DisplayName, ColumnTypeUUID, ColumnValue, TargetPosition) 
VALUES ('22595623bc3f4dd3810576c1aecb6b62', 'f21192573fe84d9d9e11eadd7e318f1b', 'Employer Match', 'ec28b6b73e5a4153b271eb6a1699f31a  ', 0.00, 2);
INSERT INTO payrolldata
       (PayrollDataItemUUID, EmployeeUUID, DisplayName, ColumnTypeUUID, ColumnValue, TargetPosition) 
VALUES ('22e8c25d57924531a94187e2582c47d8', 'f21192573fe84d9d9e11eadd7e318f1b', 'Per Pay Deferral Amount', '21b9756577b742f99a34589b0e81f14a', 100.00, 1);
INSERT INTO payrolldata
       (PayrollDataItemUUID, EmployeeUUID, DisplayName, ColumnTypeUUID, ColumnValue, TargetPosition) 
VALUES ('30b255ecd57d418f9ad1024021690557', 'f21192573fe84d9d9e11eadd7e318f1b', 'Current Hours', '21ac49bb467446fea45eef4b3fc62f8f', 0.00, 1);
INSERT INTO payrolldata
       (PayrollDataItemUUID, EmployeeUUID, DisplayName, ColumnTypeUUID, ColumnValue, TargetPosition)
VALUES ('a243eeb18ffb47e0b70d8fde224fd7d1', 'f21192573fe84d9d9e11eadd7e318f1b', 'Compensation', '421f4466332d4a93834b23f0eeea7e57', 108.39, 1);
  
INSERT INTO payrolldata
       (PayrollDataItemUUID, EmployeeUUID, DisplayName, ColumnTypeUUID, ColumnValue, TargetPosition) 
VALUES ('0789dcbd3ef64ea1bcc29276ea92693f', 'f21192573fe84d9d9e11eadd7e318f1c', 'Loan', 'be35e59aa6c2479d86e8d4f5dab2fe9d  ', 0.00, 1);
INSERT INTO payrolldata
       (PayrollDataItemUUID, EmployeeUUID, DisplayName, ColumnTypeUUID, ColumnValue, TargetPosition) 
VALUES ('22595623bc3f4dd3810576c1aecb6b63', 'f21192573fe84d9d9e11eadd7e318f1c', 'Employer Match', 'ec28b6b73e5a4153b271eb6a1699f31a  ', 0.00, 2);
INSERT INTO payrolldata
       (PayrollDataItemUUID, EmployeeUUID, DisplayName, ColumnTypeUUID, ColumnValue, TargetPosition) 
VALUES ('22e8c25d57924531a94187e2582c47d7', 'f21192573fe84d9d9e11eadd7e318f1c', 'Per Pay Deferral Amount', '21b9756577b742f99a34589b0e81f14a', 100.00, 1);
INSERT INTO payrolldata
       (PayrollDataItemUUID, EmployeeUUID, DisplayName, ColumnTypeUUID, ColumnValue, TargetPosition) 
VALUES ('30b255ecd57d418f9ad1024021690558', 'f21192573fe84d9d9e11eadd7e318f1c', 'Current Hours', '21ac49bb467446fea45eef4b3fc62f8f', 0.00, 1);
INSERT INTO payrolldata
       (PayrollDataItemUUID, EmployeeUUID, DisplayName, ColumnTypeUUID, ColumnValue, TargetPosition)
VALUES ('a243eeb18ffb47e0b70d8fde224fd7d2', 'f21192573fe84d9d9e11eadd7e318f1c', 'Compensation', '421f4466332d4a93834b23f0eeea7e57', 108.39, 1);
  
  
