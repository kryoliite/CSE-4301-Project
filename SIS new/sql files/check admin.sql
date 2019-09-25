CREATE or replace procedure check_admin(input_id in number, x out varchar2) as
	temp varchar2(30);
begin
	select password into temp
	from admin
	WHERE id = input_id;
	x:=temp;
	exception
	when no_data_found
	then x:='not found';
end;
/
