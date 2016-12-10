program pembayaran_barang;
uses crt;
const
user='kartini';
pass='10116209';

var
 kode,barang,kodev,adadiskon,namapengguna,katasandi : string;
 beli,harga,hargatotal,bayar,besardiskon : integer;
 hargadiskon,totalbayar,kembalian : real;

begin
 gotoxy(32,10); write('<< L O G I N >>');
 gotoxy(30,12); write('NAMA PENGGUNA :'); readln(namapengguna);
 gotoxy(30,13); write('KATA SANDI    :'); readln(katasandi);
  if(namapengguna<>user)or(katasandi<>pass)
  then
  begin
  gotoxy(30,14); textcolor(blue);
  write('login gagal');
  end
  else
  clrscr;
 write('kode barang              :'); readln(kode);
  if(kode='pk01') or (kode='pk02') or (kode='pk03') or (kode='pk04')
  then
  begin
  kodev := 'ya';
   end
   else
   begin
   kodev :='tidak';
   end;

   if(kodev='ya')
    then
    begin
    write('jumlah beli              :'); readln(beli);
    end
    else
    begin
    writeln('----------------------------');
    writeln('maaf kode barang tidak valid');
    writeln('----------------------------');
    end;

    if(kode='pk01')
     then
     begin
     barang := 'pakaian';
     harga := 75000;
     end
     else
      if(kode='pk02')
       then
       begin
       barang := 'tas';
       harga := 65500;
       end
       else
         if(kode='pk03')
          then
          begin
          barang := 'sepatu';
          harga := 157000;
          end
          else
             if(kode='pk04')
              then
              begin
              barang := 'aksesoris';
              harga := 45000;
              end;

       if(kodev='ya')
         then
         begin
         if(beli >10)
         then
         begin
          write('adadiskon[ya/tidak]      :'); readln(adadiskon);
          end
          else
          begin
          adadiskon := 'tidak';
          besardiskon:=0;
          end;

          if(adadiskon ='ya')or(adadiskon='ya')
          then
          begin
          write('besardiskon(%)           :'); readln(besardiskon);
          end
          else
          if(adadiskon='tidak')or(adadiskon='tidak')
          then
          begin
           besardiskon := 0;
           end
           else
           begin
           writeln('--------------------');
           writeln('tidak didiskonkan');
           writeln('--------------------');
           end;

           hargatotal := harga*beli;
           hargadiskon := hargatotal*besardiskon div 100;
           totalbayar := hargatotal-hargadiskon;
            if(adadiskon='ya') or (adadiskon='ya') or (adadiskon='tidak') or (adadiskon='tidak')
            then
            begin
            writeln('harga barang yang dibeli : Rp. ', totalbayar:10:0);
            write('masukan uang pembayaran  :Rp.'); readln(bayar);
            kembalian := bayar-totalbayar;
            end;
            end;

            if(kodev='ya')
             then
             begin
             if(adadiskon='ya')or(adadiskon='ya') or (adadiskon='tidak') or (adadiskon='tidak')
             then
             begin
             writeln('-----------------------------------------');
             writeln('kode barang              : ', kode);
             writeln('nama barang              : ', barang);
             writeln('jumlah beli              : ', beli);
             writeln('harga satuan             : Rp. ',harga:10);
             writeln('harga total              : Rp. ',hargatotal:10 );
             writeln('diskon (%)               : Rp. ',hargadiskon:10:0);
             writeln('totalbayar               : Rp. ',totalbayar:10:0);
             writeln('bayar                    : Rp. ', bayar:10);
             writeln('uang kembalian           : Rp. ', kembalian:10:0);
             end;
             end;
             readln;
             readln;
end.
