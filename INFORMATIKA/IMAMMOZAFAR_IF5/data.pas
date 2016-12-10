program Data_Barang;
 uses crt;
 const
      User = 'Imam Mozafar';
      Pass='10116199';

var
namabarang,kode_barang,status,namapengguna,katasandi : string;
harga_barang,jumlah_beli,diskon,harga_total,bayar : integer;
harga_diskon,total_bayar,kembalian : real;
begin
gotoxy(32,10); write('<< L O G I N >>');
gotoxy(30,12); write('NAMA PENGGUNA'); readln(namapengguna);
gotoxy(30,12); write('KATA SANDI'); readln(namapengguna);

write('kode_barang'); readln(kode_barang);
 if(namapengguna <> User) or (katasandi <> Pass)
    then
    gotoxy(30,14); textcolor(yellow);
        write('LOGIN GAGAL');
else
begin
clrscr;
if ((kode_barang <> 'PKO1')and(kode_barang <> 'pk01')) and
   ((kode_barang<>'TS02') and (kode_barang <> 'pk01')) and
   ((kode_barang<>'SP03') and  (kode_barang <> 'pk01')) and
   ((kode_barang<>'AK04') and (kode_barang <> 'pk01'))
  then

      if (kode_barang='PK01') then
       begin

           harga_barang := 75000;
           namabarang := 'PAKAIAN';


         end;
        if (kode_barang='TS02') then

           harga_barang := 75000;
           namabarang := 'TAS';
        else
        if (kode_barang='SP03') then

           harga_barang := 75000;
           namabarang := 'SEPATU';
        else
        if (kode_barang='AK04') then

           harga_barang := 75000;
           namabarang := 'AKSESORIS';
        end;

  harga_total := jumlah_beli * harga_satuan;
  diskon := 0;
  writeln(jumlah_beli)

    if(jumlah_beli >= 10) then
    begin
       write('ada_diskon'); readln(status);
       if (status='Ya')
       then
       begin
            write('Besar_Diskon');  readln(besardiskon);
            diskon := besardiskon/100*harga_total;
         end
         end;
         totalbayar := harga_total-diskon;

        //tampilan keluaran
        clrscr;
    textcolor(15);
   write('Kode_Barang :'); textcolor(yellow);writeln(kode_barang);

   textcolor(15);
   write('Nama_Barang :'); textcolor(yellow);writeln(nama_barang);

   textcolor(15);
   write('Jumlah_Beli :');textcolor(yellow); writeln(jumlah_beli);

   textcolor(15);
   write('Harga_Satuan :');textcolor(yellow); writeln(harga_satuan);
   textcolor(15);
   write('Harga_Total :'); textcolor(yellow);writeln(harga_total);

   textcolor(15);
   write('Diskon :');  textcolor(yellow);
   write(besar_diskon:2:0);
    write('%',': Rp.');writeln(diskon :9:1);

   textcolor(15);
   write('Total_Bayar : Rp.'); textcolor(yellow); writeln(total_bayar:9:1);

   textcolor(15);
   write('----------------------------');

    textcolor(15);
   write('Bayar           : Rp.   ');  readln(bayar);

       textcolor(15);
       if (bayar < total_bayar)
          then
       begin
           textcolor(15);
           writeln('Pembayaran Kurang !');
           readln();
           gotoxy(1,10); clereool;
           gotoxy(21,9); clereool;
            textcolor(15); readln(bayar);
        end;
       kembalian := bayar-total_bayar;

       textcolor(15);
       write('Uang Kembali: Rp.');
       textcolor(yellow); writeln(kembalian:9:1);
       end;
        end;
readln;
end.
