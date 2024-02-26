CREATE TABLE [dbo].[TB_AUDIT_TABLES] (
    [AuditRecordID]        INT            IDENTITY (1, 1) NOT NULL,
    [EventType]            VARCHAR (128)  NULL,
    [PostTime]             VARCHAR (128)  NULL,
    [SPID]                 INT            NULL,
    [ServerName]           VARCHAR (128)  NULL,
    [HostName]             VARCHAR (128)  NULL,
    [UserName]             VARCHAR (128)  NULL,
    [LoginName]            VARCHAR (128)  NULL,
    [DatabaseName]         VARCHAR (128)  NULL,
    [SchemaName]           VARCHAR (128)  NULL,
    [ObjectName]           VARCHAR (128)  NULL,
    [ObjectType]           VARCHAR (128)  NULL,
    [Parameters]           VARCHAR (2000) NULL,
    [AlterTableActionList] VARCHAR (2000) NULL,
    [TSQLCommand]          VARCHAR (2000) NULL
);

