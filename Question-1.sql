--Ürünlerin ürün adý, ürün kodunu ve KDV dahil satýþ fiyatýný listeleyiniz.
select DISTINCT(sd.urunKod),u.urunAd,sd.toplam from tblSiparisDetay as sd
join tblUrun as u on sd.urunKod=u.urunKod