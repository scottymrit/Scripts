select employeeuuid, payrolluuid from Employees where SocialSecurityNumber = '121-21-2121';



select *
  from Payrolls where  f21192573fe84d9d9e11eadd7e318f1a  
  
  
select *
  from payrolls
 where payrollUUID in (select payrolluuid from Employees where SocialSecurityNumber = '121-21-2121');
 
 
select *
  from payrolldata
 where employeeuuid;
 
 
select *
  from payrollData
 where employeeuuid in (select emps.employeeuuid
  						  from Employees emps, 
  						       payrolls prs
 						 where emps.SocialSecurityNumber = '121-21-2121'
   						   and exportDate is not null);
   						  
delete from actions where actionUUID in
('07495255905f4fa9855be2d0e5e07e55',  
'3645bdf3dec3446eb523c44813843196',  
'4011a4e8a86045bd87118151e59cd87a');  


   						  
select top 5 emps.employeeuuid, prs.payrollDate
  from Employees emps, 
       payrolls prs
 where emps.SocialSecurityNumber = '121-21-2121'
   and emps.PayrollUUID = prs.PayrollUUID
   and exportDate is not null
 order by payrollDate asc;
 
select *
  from payrolldata
 where employeeuuid = 'f21192573fe84d9d9e11eadd7e318f1a'

select *
  from employees
 where employeeuuid in ('f21192573fe84d9d9e11eadd7e318f1a','f21192573fe84d9d9e11eadd7e318f1b','f21192573fe84d9d9e11eadd7e318f1c');
 
select *
  from employees;
select *
  from payrolls;

INSERT INTO "scott-dtm-test".dbo.Payrolls
       (PayrollUUID, LocationUUID, Created, Uploaded, ProcessingStart, ProcessingStop, TemplateUUID, FileUNC, PayrollDate, ExportDate, CompletedDate, Reason) 
VALUES ('db079ac437ff4ec1893014b5bf168f76', '1bff783173174e4db67d3bc2dd5e40f9  ', '2010-08-02 09:13:38.397', '2010-08-02 00:00:00.0', '2010-08-06 08:44:29.687', '2010-08-06 08:44:40.547', '42a07d359b6f48f1964216e63af94d4b  ', 'C:\PayrollUploads\DTM\UploadedPayrolls\120609_to_121909_wilkins2.xls', '2010-07-26 00:00:00.0', '2010-07-27 00:00:00.0', null, null);

INSERT INTO "scott-dtm-test".dbo.Payrolls
       (PayrollUUID, LocationUUID, Created, Uploaded, ProcessingStart, ProcessingStop, TemplateUUID, FileUNC, PayrollDate, ExportDate, CompletedDate, Reason) 
VALUES ('db079ac437ff4ec1893014b5bf168f78', '1bff783173174e4db67d3bc2dd5e40f9  ', '2010-08-02 09:13:38.397', '2010-08-02 00:00:00.0', '2010-08-06 08:44:29.687', '2010-08-06 08:44:40.547', '42a07d359b6f48f1964216e63af94d4b  ', 'C:\PayrollUploads\DTM\UploadedPayrolls\120609_to_121909_wilkins2.xls', '2010-07-19 00:00:00.0', '2010-07-20 00:00:00.0', null, null);
         
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
  
  
  
  
  
  
  
  
  
  
  
  
                
select *
  from ColumnTypes;
                         
select *
  from payrolls;                         
                         
                         
select *
   from employee
  where employeeuuid = 'f21192573fe84d9d9e11eadd7e318f1a';
                         
                         

                         
                         

