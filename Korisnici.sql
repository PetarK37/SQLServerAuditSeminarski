/*Brisanje naloga ukoliko postoje*/
IF EXISTS (SELECT * FROM sys.database_principals WHERE name in ('Nastavnik','Student'))
BEGIN
	drop user Nastavnik
	drop user  Student
END

IF EXISTS (SELECT * FROM sys.server_principals  WHERE name in ('Nastavnik','Student'))
BEGIN
	drop login Nastavnik
	drop login Student
END


/*Kreiranje dva korisnicka naloga sa lozinkom lozinka*/
create login Nastavnik with password = 'lozinka'
create login Student with password = 'lzoinka'

use Fakultet_Audit
create user Nastavnik  for login Nastavnik
create user Student  for login Student

