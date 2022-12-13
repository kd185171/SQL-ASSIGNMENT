use a11;
create procedure calculate
@operand1 int,@operand2 int,@operand4 char
as
begin
      declare @result int;
      begin try
	       if @operand4='+' set @result=@operand1+@operand2
		   if @operand4='-' set @result=@operand1-@operand2
		   if @operand4='*' set @result=@operand1*@operand2
		   if @operand4='/' set @result=@operand1/@operand2
	  end try
	  begin catch
        SELECT  
            ERROR_NUMBER() AS ErrorNumber  
            ,ERROR_SEVERITY() AS ErrorSeverity  
            ,ERROR_STATE() AS ErrorState  
            ,ERROR_PROCEDURE() AS ErrorProcedure  
            ,ERROR_LINE() AS ErrorLine  
            ,ERROR_MESSAGE() AS ErrorMessage;  
     end catch
	print @result
end


exec calculate 40,20,'+';
exec calculate 40,20,'-';
exec calculate 40,20,'*';
exec calculate 40,20,'/';
	       

	       