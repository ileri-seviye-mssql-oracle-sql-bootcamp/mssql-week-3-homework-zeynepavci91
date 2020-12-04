--01.02.2007 - 05.03.2014 tarihleri aras�nda hangi �r�nden ka� adet sipari� edildi�ini bulan SQL kodunu yaz�n�z.
select DISTINCT(sd.faturaKod),sd.urunkod, sd.adet,s.siparisTarih from tblSiparisDetay as sd
join tblSiparis as s on s.faturaKod=sd.faturaKod
where siparisTarih between '01.02.2007' and '05.03.2014'
order by siparisTarih