use master
go

--Kreiranje novog audita sa maksimalnom velicinom fajla 20mb i maksimalno 10 fajlova koji pri gresci izvrsava CONTINUE loginku
-- NAPOMENA kod filtera staviti onaj broj koji vam komanda select SUSER_ID('korisnickoIme') vrati
create server audit Primer2_Audit to file ( FILEPATH = 'C:\Audit',MAXSIZE = 20 MB, MAX_ROLLOVER_FILES = 10)
with (ON_FAILURE  = CONTINUE)
where (server_principal_id <> 259)
go

use Fakultet_Audit
go
--Kreiranje specifikacije za audit koji prati insert i select komande nad Polozio tabelom
create database audit specification Primer2_AuditSpecification
for server audit Primer2_Audit
add (SELECT,INSERT on Fakultet_Audit.dbo.Polozio BY public)
WITH (STATE = ON)
go

use master
go
ALTER SERVER AUDIT Primer2_Audit 
WITH (STATE = ON) 


-- Pregled zapisanih audita iz fajla 
SELECT * FROM fn_get_audit_file('C:\Audit\Primer2_Audit_*.sqlaudit',default,default) where succeeded = 1 
GO  