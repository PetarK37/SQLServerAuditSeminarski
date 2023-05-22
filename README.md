# Auditing u Microsoft SQL Server-u
`Seminasrki_rad_audit.pptx` je fajl u kome se nalaze svi slajdovi sa predavanja. Ostali `.sql` fajlovi su primeri koda koje smo koristili na predavanju ostavljeni da ih sami isporbate kod sebe. NAPOMENA: `Pomocni.sql` je fajl sa insert/select i drugim komandama korišćenim da testiramo audit.
## Početna podešavanja
Da bi ste uspešno testirali primere sa ovog zadataka morate dozovliti `mixed mode` prilikom logovanja u SQL server prema sledećim koracima.
- Desni klik na konektovani server i biranje opcije `properties`
- Idite na `security`
- Izaberite `SQL Server and Windows Authentication mode`

Nakon toga potrebno je inicijalizovati bazu pokretanjem `Kreiranje_baze.sql` skripte kao i kreiranje novih korisnika pokretanjem `Korisnici.sql`.

## Primer 1
U primeru broj 1 smo videli definisanje server-level audita kroz GUI. Grupe koje smo dodali u specifikaciju tog audita su sledeće(Poslednja je dodata naknadno da bi se demostiralo snimanje audit-level događaja):

|Audit Action Type|
| ------ |
| AUDIT_CHANGE_GROUP |
| FAILED_LOGIN_GROUP |
|SUCCESSFUL_LOGIN_GROUP|
|LOGUOT_GROUP|

## Primer 2
U primeru 2 smo definisali database-level audit za odredjene tabele sa filterom. Da bi ga kreirali i pokrenuli pogledati skriptu `Preimer_2.sql`. Takodje ako želite da vidite i neuspešne akcije pokrenite prvi deo `Permisije.sql`

## Primer 3
U primeru 3 smo definisali uskladištenu proceduru kako bi videli razliku izmedju poziva uskladištne procedure i direkto iz SQL. Da bi ga kreirali proceduru potrebno je pokrenuti skriptu `Preimer_3.sql`. Takođe neophodno je pokrenuti i skriptu `Permisije.sql`.

## Primer 4
U primeru 3 smo nadogradili postojeće primere  i definisali korisničku audit akciju. Da bi ovaj primer kreirali i pokrenuli potrebno je ručno izmeniti audit iz primera 2(pogledati  skriptu `Preimer_4.sql`). Takođe neophodno je pokrenuti i skriptu `Permisije.sql`.
