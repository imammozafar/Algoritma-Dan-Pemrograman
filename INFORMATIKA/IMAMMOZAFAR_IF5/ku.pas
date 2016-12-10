program a;
uses crt;
var
   gigi,kecepatan,hari,i: integer;
   
   hasil : string;
begin
     writeln('Hari ke-1');
     writeln('----------------');
 write('Masukan Gigi Motor : '); readln(gigi);
     hari := 0;
     i    := 1;
  repeat

         hari := hari + i;
         i    := i + 1;
     end

  until (i > 6);
 readln(hari);
 write('Kecepatan :'); readln(kecepatan);
 write('Hasil :'); readln(hasil);




readln;
end.
