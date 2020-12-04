-- 5.Ýptal edilen sipariþlerde bulunan ürünleri listeyiniz.
select u.urunKod,u.urunad,sdr.aciklama from tblSiparisDurum as sdr
left join tblSiparis as s on s.siparisDurumKod=sdr.siparisDurumKod
left join tblSiparisDetay as sd on sd.faturaKod=s.faturaKod
left join tblUrun as u on u.urunkod=sd.urunKod
where sdr.siparisDurumKod=10
