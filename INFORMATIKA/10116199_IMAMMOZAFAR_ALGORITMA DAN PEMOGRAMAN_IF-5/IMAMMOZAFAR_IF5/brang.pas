program Daftar_Barang;
uses crt;

//Kamus Global

const
maksbrg=3;
type
Larik1=array[1..maksbrg] of string;
Larik2=array[1..maksbrg] of integer;

var
kdbrg,nmbrg,status : Larik1;
harga,stok          : Larik2;
procedure IsiData (var kdbrg : Larik1; var stok : Larik2);
{I.S. : User memasukan kode barang dan stok minimum}
{F.S. : Menghasilkan kode barang dan stok minimum}
var
i : integer;
begin
     gotoxy(33,1);write('DAFTAR BARANG');
     gotoxy(5,2);
     write('-------------------------------------------------------------------');
     gotoxy(5,3);
     write('| No | Kode Barang | Nama Barang | Harga Satuan | Stok |   Status  ');
     gotoxy(5,4);
     write('------------------------------------------------------------------');
     
     for i := 1 to maksbrg do
     begin
       gotoxy(5,i+4);
       write('|    |             |            | Rp.           |      |         |           ');
       gotoxy(7,i+4); write(i);
       gotoxy(12,i+4); readln(kdbrg[i]);
       //validasi kode barang
       while (kdbrg [i] <> 'BRG01') and
             (kdbrg [i] <> 'BRG02') and
             (kdbrg [i] <> 'BRG03') do
             begin
               gotoxy(12,i+5);
               write('Salah Kode Barang, Ulangi !');
               readln;
               gotoxy(12,i+5); clreol;
               gotoxy(10,i+4);
               write('|             |            | Rp.           |      |         |           ');
               gotoxy(12,i+4); readln(kdbrg[i]);
             end;//endwhile

             gotoxy(55,i+4); readln(stok[i]);

     end;//endfor
       gotoxy(5,i+5);
       write('------------------------------------------------------------------');
     
end;


     function namabrg(kode:string):string;
     {I.S. : kode barang sudah terdefinisi}
     {F.S. : menghasilkan fungsi nama barang}
     begin
          if(kode='BRG01')
           then
               namabrg := 'Pakaian'
           else
               if(kode='BRG02')
                then
                    namabrg  :='Sepatu'
               else
                   namabrg :='Tas';
      end;
function hargasatuan(kode:string):integer;
{I.S. :}
{F.S. :}
begin
  if (kode='BRG01')
     then
         hargasatuan :=67500
     else
      if(kode='BRG02')
        then
            hargasatuan :=118000
        else
            hargasatuan := 72500;

end;
function statusbrg(stokmin:integer):string;
{I.S. : stok minimum sudah terdefinisi}
{F.S. : menghasilkan fungsi status barang}
begin
  if (stokmin >= 20)
     then
         statusbrg :='Aman'
     else
         statusbrg :='Tidak Aman';

end;

procedure TampilData(kdbrg:Larik1; stok : Larik2);
{I.S. :kode barang dan stok minimum sudah terdefinisi}
{F.S. :menampilkan nama baramg.harga satuan dan status}
var
   i : integer;

begin
for i := 1 to maksbrg do
   begin
     nmbrg[i] := namabrg(kdbrg[i]);
     harga[i] := hargasatuan(kdbrg[i]);
     status[i] := statusbrg(stok[i]);
     gotoxy(26,i+4); write(nmbrg[i]);
     gotoxy(44,i+4); write(harga[i]);
     gotoxy(62,i+4); write(status[i]);
   end;//for
end;
begin
     IsiData(kdbrg,stok);
     TampilData(kdbrg,stok);
     readln;
end.
