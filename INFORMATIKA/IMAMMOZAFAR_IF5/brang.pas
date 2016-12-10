program Daftar_Barang;
uses crt;

//Kamus Global


const
  maksbrg=3;
type
Databrg = record

kdbrg,nmbrg,status : String;
harga,stok,maxstok,minstok          : Integer;
end;
Barang = array [1..maksbrg] of Databrg;
var
brg:Barang;

procedure IsiData (var Databrg:Barang);
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
       gotoxy(12,i+4); readln(Databrg[i].kdbrg);
       //validasi kode barang
       while ((Databrg[i].kdbrg <> 'BRG01') and
             (Databrg[i].kdbrg  <> 'BRG02') and
             (Databrg[i].kdbrg  <> 'BRG03')) do
             begin
               gotoxy(12,i+5);
               write('Salah Kode Barang, Ulangi !');
               readln;
               gotoxy(12,i+5); clreol;
               gotoxy(10,i+4);
               write('|             |            | Rp.           |      |         |           ');
               gotoxy(12,i+4); readln(Databrg[i].kdbrg);
             end;//endwhile

             gotoxy(55,i+4); readln(Databrg[i].stok);

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
{I.S. :kode barang sudah terdefinisi}
{F.S. :menghasilkan fungsi hargasatuan}
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

//Funsi Stok Barang tertinggi
function maxstok(brg:Barang):integer;
{I.S. :}
{F.S. :}
var
   i,max :integer;
begin
  max:=brg[1].stok;
  for i := 2 to maksbrg do
  begin
       if (brg[i].stok > max)
          then
              max := brg[i].stok;
  end;
    maxstok:=max;
end;

//Funsi Stok Barang terendah
function minstok(brg:Barang):integer;
{I.S. :}
{F.S. :}
var
   i,min :integer;
begin
  min:=brg[1].stok;
  for i := 2 to maksbrg do
  begin
       if (brg[i].stok > min)
          then
              min := brg[i].stok;
  end;
    minstok:=min;
end;




procedure TampilData(Databrg:Barang);
{I.S. :kode barang dan stok minimum sudah terdefinisi}
{F.S. :menampilkan nama baramg.harga satuan dan status}
var
   i : integer;

begin
for i := 1 to maksbrg do
   begin
     DataBrg[i].nmbrg := namabrg(Databrg[i].kdbrg);
     DataBrg[i].harga := hargasatuan(Databrg[i].kdbrg);
     DataBrg[i].status := statusbrg(Databrg[i].stok);
     gotoxy(26,i+4); write(Databrg[i].nmbrg);
     gotoxy(44,i+4); write(Databrg[i].harga);
     gotoxy(62,i+4); write(DataBrg[i].status);
   end;//for
end;
begin
     IsiData(brg);
     TampilData(brg);

     readln;
end.
