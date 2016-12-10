program Menjumlahkan_1_Sampai_Dengan_10;
{I.S. : Diberikan harga pencacah (i)=10}
{F.S. : Menampilkan hasil penjumlahan}
var
   S : integer;

procedure Hitung_S(var S : integer);
{I.S. : Diberikan harga pencacah (i)=10}
{F.S. : Menghasilkan hasil penjumlahan}
var // Kamus Lokal
   i : integer;
begin
   S := 0;
   for i := 1 to 10 do
       S := S + i;
end; //endprocedure

procedure Tampil_S(S : integer);
{I.S. : Hasil Penjumlahan (S) sadah terdefinisi}
{F.S. : Menampilkan hasil penjumlahan}
begin
     write('S = ',S);
end; //endprocedure

begin
     Hitung_S(S);
     Tampil_S(S);
     readln;
end.
