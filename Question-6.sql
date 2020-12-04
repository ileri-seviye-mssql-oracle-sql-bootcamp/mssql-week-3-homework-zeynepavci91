--6. En fazla sipariþ veren meslek grubunu bulunuz.
select k.meslekKod,m.meslek from tblSiparis as s
join tblkullanici as k on  k.kullanicikod=s.kullaniciKod
join tblMeslek as m on m.meslekKod=k.meslekKod
where s.toplam in(select MAX(s.toplam) from tblSiparis as s)
group by k.meslekKod,m.meslek
