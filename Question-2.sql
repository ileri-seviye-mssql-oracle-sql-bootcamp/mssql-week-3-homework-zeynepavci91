-- 2.En y�ksek toplam fiyata sahip faturaya dahil �r�nleri ve faturay� sipari� veren m��terinin ad�n� soyad�n� listeyen SQL kodunu yaz�n�z.
select DISTINCT(s.faturaKod),k.isim, k.soyad,u.urunAd from tblKullanici as k
left join tblSiparis as s on s.kullaniciKod=k.kullaniciKod
left join tblSiparisDurum as sd on sd.siparisdurumkod=s.siparisDurumKod 
left join tblSiparisDetay as sdt on sdt.faturaKod=s.faturaKod
left join tblUrun as u on u.urunKod=sdt.urunKod
where s.faturaKod in (select max(s.faturakod) from tblSiparis as s)
