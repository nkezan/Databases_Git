
CREATE   TRIGGER TRG_AUDIT_TABLES ON DATABASE 
FOR DDL_TABLE_VIEW_EVENTS
AS
 
DECLARE @EventData XML;  
SET @EventData = EVENTDATA();  
 
INSERT INTO dbo.TB_AUDIT_TABLES ( EventType ,
                             PostTime ,
                             SPID ,
							 ServerName ,
                             HostName ,
							 UserName ,
							 LoginName ,
                             DatabaseName ,
                             SchemaName ,
                             ObjectName ,
                             ObjectType ,
                             Parameters ,
                             AlterTableActionList ,
                             TSQLCommand )
 VALUES (@EventData.value('(/EVENT_INSTANCE/EventType)[1]', 'VARCHAR(128)') ,
         @EventData.value('(/EVENT_INSTANCE/PostTime)[1]', 'VARCHAR(128)')  ,
         @EventData.value('(/EVENT_INSTANCE/SPID)[1]', 'VARCHAR(128)')  ,
		 @EventData.value('(/EVENT_INSTANCE/ServerName)[1]', 'VARCHAR(128)')  ,
		 @EventData.value('(/EVENT_INSTANCE/HostName)[1]', 'VARCHAR(128)')  ,
         @EventData.value('(/EVENT_INSTANCE/UserName)[1]', 'VARCHAR(128)')  ,
		 @EventData.value('(/EVENT_INSTANCE/LoginName)[1]', 'VARCHAR(128)')  ,
         @EventData.value('(/EVENT_INSTANCE/DatabaseName)[1]', 'VARCHAR(128)')  ,
         @EventData.value('(/EVENT_INSTANCE/SchemaName)[1]', 'VARCHAR(128)') ,
         @EventData.value('(/EVENT_INSTANCE/ObjectName)[1]', 'VARCHAR(128)') ,
         @EventData.value('(/EVENT_INSTANCE/ObjectType)[1]', 'VARCHAR(128)') ,
         @EventData.value('(/EVENT_INSTANCE/Parameters)[1]', 'VARCHAR(128)')  ,
         @EventData.value('(/EVENT_INSTANCE/AlterTableActionList)[1]', 'VARCHAR(128)')  ,
         @EventData.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'nvarchar(2000)') 
      );
 

