--�r�nlerin �r�n ad�, �r�n kodunu ve KDV dahil sat�� fiyat�n� listeleyiniz.
select DISTINCT(sd.urunKod),u.urunAd,sd.toplam from tblSiparisDetay as sd
join tblUrun as u on sd.urunKod=u.urunKod