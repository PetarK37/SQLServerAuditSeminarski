--PRIMER 2
-- Uklanjanje select permisije studentu da bi u preimeru 1 videli neuspesne pokusaje
use Fakultet_Audit
deny SELECT to Student
go


--PRIMER 3-4
-- Uklanjanje select permisije studentu i profesoru, a dodavanje mogucnosti da se select izvrsi jedino preko uskladistene procedure
use Fakultet_Audit
deny SELECT to public
grant EXECUTE ON studentPolozio to public
go

