-- printing audit table
select * from Auditlog


-- audit procedure
create procedure dbo.audit
	
	@tablename varchar(30),
	@primarykname varchar(30),
	@changedby varchar(100),
	@olddata varchar(max),
	@newdata varchar(max)
AS
Begin

	set nocount on;

		declare @action varchar(20),
			@triggerAction int =0 

			if @olddata is not null
				set @triggerAction = 1
			
			if @newdata is not null
				set @triggerAction = @triggerAction + 2 ;

			select @action = case @triggerAction
				when 1 then
					'delete'
				when 2 then
					'insert'
				else
					'update'
				end

			if @olddata is not null or @newdata is not null
				insert into dbo.Auditlog
					(tablename,action,userid,machinename,
					pidoftable,olddata,newdata)

					values(@tablename,@action,@changedby,
					ISNULL(HOST_NAME(),'unkown'),
					@primarykname,@olddata,@newdata);

END
				
GO

-- admin trigger
CREATE TRIGGER dbo.adminaudit
   ON  Admin
   AFTER INSERT, UPDATE, DELETE
AS 
BEGIN
		DECLARE @olddata VARCHAR (MAX)
		DECLARE @newdata VARCHAR(MAX)
		DECLARE @changedby VARCHAR (100)

		SET NOCOUNT ON

		SET @olddata = (SELECT * FROM deleted FOR XML AUTO) --upadte/delete
		SET @newdata = (SELECT * FROM inserted FOR XML AUTO)	--inserted

		--SELECT TOP 1 @Changed By LastChanged By from inserted
		Set @changedby = IsNull( @changedby, ORIGINAL_LOGIN())

		Exec dbo.audit 'dbo.Admin', 'AID', @changedby, @olddata, @newdata

END

GO

-- student trigger
CREATE TRIGGER dbo.auditstudents
   ON  dbo.Student
   AFTER INSERT, UPDATE, DELETE
AS 
BEGIN
		DECLARE @olddata VARCHAR (MAX)
		DECLARE @newdata VARCHAR(MAX)
		DECLARE @changedby VARCHAR (100)

		SET NOCOUNT ON

		SET @olddata = (SELECT * FROM deleted FOR XML AUTO) --upadte/delete
		SET @newdata = (SELECT * FROM inserted FOR XML AUTO)	--inserted

		--SELECT TOP 1 @Changed By LastChanged By from inserted
		Set @changedby = IsNull( @changedby, ORIGINAL_LOGIN())

		Exec dbo.audit 'dbo.Student', 'SID', @changedby, @olddata, @newdata

END

GO

-- notification audit
CREATE TRIGGER dbo.Notificationsaudit
   ON  Notifications
   AFTER INSERT, UPDATE, DELETE
AS 
BEGIN
		DECLARE @olddata VARCHAR (MAX)
		DECLARE @newdata VARCHAR(MAX)
		DECLARE @changedby VARCHAR (100)

		SET NOCOUNT ON

		SET @olddata = (SELECT * FROM deleted FOR XML AUTO) --upadte/delete
		SET @newdata = (SELECT * FROM inserted FOR XML AUTO)	--inserted

		--SELECT TOP 1 @Changed By LastChanged By from inserted
		Set @changedby = IsNull( @changedby, ORIGINAL_LOGIN())

		Exec dbo.audit 'dbo.Notifications', 'Su', @changedby, @olddata, @newdata

END

GO