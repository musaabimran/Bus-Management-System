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