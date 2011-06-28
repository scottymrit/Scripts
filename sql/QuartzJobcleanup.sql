delete from t_mm_qrtz_job_listeners;
delete from t_mm_qrtz_trigger_listeners;
delete from t_mm_qrtz_fired_triggers;
delete from t_mm_qrtz_simple_triggers;
delete from t_mm_qrtz_cron_triggers;
delete from t_mm_qrtz_blob_triggers;
delete from t_mm_qrtz_triggers;
delete from t_mm_qrtz_job_details;
delete from t_mm_qrtz_calendars;
delete from t_mm_qrtz_paused_trigger_grps;
delete from t_mm_qrtz_scheduler_state;


INSERT INTO t_mm_qrtz_locks values('TRIGGER_ACCESS');
INSERT INTO t_mm_qrtz_locks values('JOB_ACCESS');
INSERT INTO t_mm_qrtz_locks values('CALENDAR_ACCESS');
INSERT INTO t_mm_qrtz_locks values('STATE_ACCESS');
INSERT INTO t_mm_qrtz_locks values('MISFIRE_ACCESS');