-- 3.Hiç sipariþ vermeyen müþterilerin mesleklerini listeleyiniz.
select DISTINCT(k.kullaniciKod),m.meslekkod,m.meslek from tblmeslek as m 
left join tblKullanici as k on k.meslekKod=m.meslekKod
left join tblSiparis as s on s.kullaniciKod=k.kullaniciKod
where s.toplam=0

