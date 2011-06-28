delete from pt_qrtz_job_listeners;
delete from pt_qrtz_trigger_listeners;
delete from pt_qrtz_fired_triggers;
delete from pt_qrtz_simple_triggers;
delete from pt_qrtz_cron_triggers;
delete from pt_qrtz_blob_triggers;
delete from pt_qrtz_triggers;
delete from pt_qrtz_job_details;
delete from pt_qrtz_calendars;
delete from pt_qrtz_paused_trigger_grps;
delete from pt_qrtz_scheduler_state;
delete from pt_qrtz_locks;


INSERT INTO pt_qrtz_locks values('TRIGGER_ACCESS');
INSERT INTO pt_qrtz_locks values('JOB_ACCESS');
INSERT INTO pt_qrtz_locks values('CALENDAR_ACCESS');
INSERT INTO pt_qrtz_locks values('STATE_ACCESS');
INSERT INTO pt_qrtz_locks values('MISFIRE_ACCESS');