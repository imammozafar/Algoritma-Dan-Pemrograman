program Menu_Pilihan;
{I.S. : user memilih salah satu menu}
{F.S. : menampilkan hasil sesuai menu yang dipilih}
uses crt;
var
   Pilihan : integer;
begin
     repeat
       clrscr; textcolor(15);
       writeln('MENU PILIHAN');
       writeln('------------');
       writeln('1. S = -2/3 + 4/6 - 7/18 + ...');
       writeln('2. MxN Menggunakan Operasi Kali ');
       writeln('0. Keluar');
       writeln('PILIHAN ANDA? '); readln(Pilihan);
       //validasi menu pilihan
       whle (Pilihan < 0) or (Pilihan > 2) do
       begin
         gotoxy(1,7); textcolor(blue);
         write('Pilihan Hanya 0/1/2, Ulangi Tekan Enter!');
         readln;
         gotoxy(1,7); clreol;
         gotoxy(15,6); clreol; textcolor(15); readln(Pilihan);
       end; //endwhile

       case (Pilihan) of
         1 : begin
               clrscr;
               writeln('MENGHITUNG S');
               writeln('------------');

               readln;
             end;
          2. : begin
               clrscr;
               writeln('Perkalian MxN');
               writeln('-------------');

               readln;
             end;

       end; //endcase




     until (Pilihan =0);


end.
