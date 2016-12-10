program Mengubah_Yard_Kaki_Inch_ke_Meter;
uses crt;
var
   yard,kaki,inch,Meter : real;
begin
     window(2,2,25,24); textbackground(7);
     clrscr;
     textcolor(0);
     gotoxy(2,2); write('Data Masukan');
     gotoxy(2,3); write('============');

     window(27,2,78,24); textbackground(7);
     clrscr;
     textcolor(0);
     gotoxy(20,2); write('Hasil Keluaran');
     gotoxy(20,3); write('============');
     //memasukan yard kaki
     window(2,2,25,24); textbackground(7);
   gotoxy(3,5);write('Memasukan Yard :'); readln(yard);
   gotoxy(3,6);write('Memasukan Kaki :'); readln(kaki);
   gotoxy(3,7);write('Memasukan Inch :'); readln(inch);
   //mengubah y,k,i menjadi m
   Meter := 0.9144*yard+0.3048 * kaki + 0.0254*inch;
   writeln;
    //menampilkan panjang dalam satuan
    window(27,2,78,24); textbackground(7);
   gotoxy(3,5);
   textcolor(red);write(yard:0:1);
   textcolor(15);writeln('Yard');
   gotoxy(3,6);
   textcolor(red);write(kaki:0:1);
   textcolor(15);writeln('Kaki');
   gotoxy(3,7);
   textcolor(red);write(inch:0:1);
   textcolor(15);writeln('Inch');
   gotoxy(3,8);
   writeln('=========');
   gotoxy(3,9);
   textcolor(red);write(Meter:0:4);
   textcolor(15);write('Meter');
   readln;
end.
