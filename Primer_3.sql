--Kreiranje uskladistene procedure koja bi nam vratila sve polozene predmete za zadatog studenta
use Fakultet_Audit
drop procedure IF EXISTS studentPolozio
go

create procedure studentPolozio (@indeks char(6))
as
	select * from Polozio where Br_ind = @indeks
go

-- Pregled zapisanih audita iz fajla(Moze se koristiti isti audit od proslog primera)
SELECT * FROM fn_get_audit_file('C:\Audit\Primer2_Audit_*.sqlaudit',default,default)
GO  
