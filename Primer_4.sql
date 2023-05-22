--NAPOMENA dodati USER_DEFINED_AUDIT_GROUP kroz gui u audit iz drugog primera (mora ici disabele prvo)
use Fakultet_Audit
drop procedure IF EXISTS studentPolozio
go

create procedure studentPolozio (@indeks char(6))
as
	declare @txt nvarchar(4000)
	set @txt = 'Indeks za koji smo trazili polozene predmete je  ' + QUOTENAME(@indeks)
	exec sys.sp_audit_write  12345,1,@txt
	select * from Polozio where Br_ind = @indeks
go

-- Pregled zapisanih audita iz fajla(Moze se koristiti isti audit od proslog primera)
SELECT * FROM fn_get_audit_file('C:\Audit\Primer2_Audit_*.sqlaudit',default,default)
GO  
