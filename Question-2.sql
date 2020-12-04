-- 2.En yüksek toplam fiyata sahip faturaya dahil ürünleri ve faturayý sipariþ veren müþterinin adýný soyadýný listeyen SQL kodunu yazýnýz.
select DISTINCT(s.faturaKod),k.isim, k.soyad,u.urunAd from tblKullanici as k
left join tblSiparis as s on s.kullaniciKod=k.kullaniciKod
left join tblSiparisDurum as sd on sd.siparisdurumkod=s.siparisDurumKod 
left join tblSiparisDetay as sdt on sdt.faturaKod=s.faturaKod
left join tblUrun as u on u.urunKod=sdt.urunKod
where s.faturaKod in (select max(s.faturakod) from tblSiparis as s)
