program Menu_pilihan;
{I.S. : user memilih salah satu enu}
{F.S. : menampilkan hasi}

uses crt;
var
   Pilihan,a,b,pangkat,i : integer;

begin
     repeat
           clrscr; textcolor(15);
           writeln('MENU PILIHAN');
           writeln('============');
           writeln('1. A Pangkat b Menggunakan Operator kali');
           writeln('2. Barisan Dari N suku :2,4,15,20,..');
           writeln('0. Keluar');
           writeln('PILIHAN ANDA ?'); readln(Pilihan);
           //validasi menu pilihan
           while (Pilihan < 0 )or (Pilihan > 2) do
           begin
             gotoxy(1,7); textcolor(yellow);
             write('Maaf Pilihan Hanya 0/1/2, Ulangi Tekan Enter !');
             readln;
             gotoxy(1,7); clreol;
             gotoxy(15,6); clreol; textcolor(15); readln(Pilihan);
           end; //endwhile

           case (Pilihan) of
                1 : begin
                     clrscr;
                     writeln('A Pangkat B');
                     writeln('-----------');
                     write('Masukan Nilai a :'); readln(a);
                     write('Masukan Nilai b :'); readln(b);

                     //validasi b
                     while (b < 0)do
                        begin
                             gotoxy(1,5); textcolor(yellow);

                             write('Harga b tidak boleh negatif, Ulangi !');
                             readln;
                             gotoxy(1,5); clreol;
                             gotoxy(20,4); clreol;
                             readln(b);
                        end;
                        clrscr;
                     write(a,'Pangkat',b,'=');
                       if (b=0) then
                          begin
                               pangkat := 1;
                               writeln(pangkat);
                          end
                     else
                         if (b = 1) then
                     begin
                          pangkat := a;
                          write(pangkat);
                     end
                     else
                     begin
                         pangkat := 1;


                     for i := 1 to b do
                        begin
                         write(a);
                       if(i <> b )then
                            write('X');
                            pangkat := pangkat *a;
                       end; //end for
                       writeln;
                       write('             =',pangkat)

                       end;
                     readln;
                    end;
                    

                2 : begin
                     clrscr;
                     writeln('Barisan Dari N Suku');
                     writeln('-------------------');


                     readln;
                    end;

           end; //endcase
until (Pilihan = 0);

end.
