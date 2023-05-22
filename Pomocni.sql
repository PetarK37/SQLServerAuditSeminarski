use Fakultet_Audit

select * from Polozio

insert into [Polozio]([Br_Ind],[S_Pred],[Datum],[Ocena]) values ('E 8823',2,'2001-10-01 00:00:00.000',5)

exec dbo.studentPolozio @indeks = 'E 8921'