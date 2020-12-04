-- 8. Adý A ile baþlayýp soyadýnda ak geçen müþterilerden en fazla sipariþ vereni bulunuz.
select k.isim,k.soyad,sd.toplam from tblSiparis as s
join tblKullanici as k on s.kullaniciKod=k.kullaniciKod
join tblsiparisdetay as sd on sd.toplam=s.toplam
where k.isim like 'a%' and k.soyad like '%ak%' and sd.adet in(select MAX(sd.adet) from tblSiparisDetay as sd)
group by k.isim,k.soyad,sd.toplam

