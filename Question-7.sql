-- 7. x numaralý ürünü en fazla sipariþ veren þehri bulunuz.
select  DISTINCT(k.sehir) from tblKullanici as k
join tblSiparis as s on s.kullaniciKod=k.kullaniciKod
join tblSiparisDetay as sd on sd.faturaKod=s.faturaKod
join tblUrun as u on sd.urunKod=u.urunkod
where s.toplam in(select max(s.toplam) from tblSiparis as s)