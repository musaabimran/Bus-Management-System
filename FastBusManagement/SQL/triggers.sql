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


-- notification trigger
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

		Exec dbo.audit 'dbo.Notifications', 'NI', @changedby, @olddata, @newdata

END

GO

