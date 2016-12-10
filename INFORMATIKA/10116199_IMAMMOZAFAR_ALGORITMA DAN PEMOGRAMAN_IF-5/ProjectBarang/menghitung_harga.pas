program harga_belanja;
uses crt;
var
   KodeBarang, NamaBarang, AdaDiskon : string;
   HargaBarang, JumlahBeli, Diskon, HargaTotal, Bayar : integer;
   HargaDiskon, TotalBayar, Kembalian : real;

begin
 write('Masukkan Kode Barang : '); readln(KodeBarang);
 if ( KodeBarang = 'PK01' ) or ( KodeBarang = 'PK02' ) or
    ( KodeBarang = 'PK03' ) or ( KodeBarang = 'PK04' ) then
  begin
   if (KodeBarang = 'PK01') then
   begin
    HargaBarang := 75000;
    NamaBarang := 'Pakaian' ;
    end
    else
    begin
        if (KodeBarang = 'PK02') then
        begin
         HargaBarang := 65500;
         NamaBarang := 'tas' ;
         end
        else
        begin
          if (KodeBarang = 'PK03') then
          begin
            HargaBarang := 157000;
            NamaBarang := 'sepatu' ;
            end
          else
          begin
            if (KodeBarang = 'PK04') then
            begin
              HargaBarang := 45000;
              NamaBarang := 'aksesoris' ;
           end;
         end;
        end;
       end;
      end;

     write('Jumlah Beli         : '); readln(JumlahBeli);
     Diskon := 0;
     if (JumlahBeli >= 10) then
     begin
      write('Ada Diskon : '); readln(AdaDiskon);
      if (AdaDiskon = 'Ya') then
      begin
       write('Jumlah Diskon          : '); readln(Diskon);
      end;
     end;

    HargaTotal := HargaBarang * JumlahBeli;
    HargaDiskon := HargaTotal * Diskon div 100;
    TotalBayar := HargaTotal - HargaDiskon;
    writeln;
    writeln('Kode Barang            : ', KodeBarang);
    writeln('Harga Barang           :', HargaBarang);
    writeln('Jumlah Beli            :', JumlahBeli);
    writeln('Harga Satuan           : RP. ', HargaBarang:10);
    writeln('Harga Totla            : RP. ', HargaTotal:10);
    writeln('Diskon (', Diskon:3, '%) : RP. ', HargaDiskon:10:0);
    writeln('Total Bayar            : RP. ', TotalBayar:10:0);
    writeln('--------------------');

    writeln('Bayar                  : RP. '); readln(Bayar);
    if (Bayar < TotalBayar) then
    begin
      writeln('Jumlah bayar tidak dapat dikurangi dari total :');
      write('Bayar                  : RP. '); readln(Bayar);
      if (Bayar >= TotalBayar) then
      begin
        Kembalian := Bayar-TotalBayar;
        writeln('Uang Kembali    : RP. ', Kembalian:10:0);
      end
     end
     else
     begin
       Kembalian := Bayar - TotalBayar;
       writeln('Kembalian   : RP. ', Kembalian);
       end;
      end
     writeln('Kode Barang Salah ');
readln;
end.
