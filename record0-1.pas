Program data_pegawai;
uses crt;
type pegawai = record
               NIP     : STRING[9];
               Nama    : string[30];
               Gol     : char;
               jaker   : real;
               end;
var
   data                 : array[1..10] of pegawai;
   gapok,insentif,gaber : real;
   Ul                   : char;
   i,n                  :integer;
begin
 repeat
   clrscr;
   writeln('Entry data Pegawai PT.Xecolah Yupaya Zandai');
   writeln('===========================================');
   writeln;
   write(' Banyak pegawai: ');readln(n);
   writeln;
   for i:=1 to n do
   begin
    writeln(' Data pegawai ke ',i,' : ');
    write('  a. NIP              : ');readln(Data[i].NIP);
    WRITE('  b. Nama             : ');readln(Data[i].Nama);
    write('  c. Golongan (Max 3) : ');readln(Data[i].Gol);
    write('  d. Jam kerja        : ');readln(Data[i].jaker);
   writeln('---------------------------');
   writeln;

   end;
   clrscr;
   writeln('Laporan Gaji Pegawai');
   writeln('PT. Xecolah Yupaya Zandai');
   writeln;
writeln('=======================================================================');
writeln('|NIP       |NAMA                |GOLONGAN  |JAM KERJA  | GAJI         |');
writeln('=======================================================================');
for i:=1 to n do
begin
case Data[i].Gol of
      '1'       : Gapok:=1000000;
      '2'       : Gapok:=1500000;
      '3'       : Gapok:=2000000;
   else
     Gapok:=0;
   end;

   if data[i].jaker>200 then insentif:=(Data[i].jaker-200)*10000
   else insentif:=0;
      Gaber:=Gapok+insentif;
writeln('|',Data[i].NIP:10,'|',data[i].Nama:20,'|',Data[i].Gol:10,'|'
,Data[i].Jaker:11:0,'|',Gaber:14:2,'|');
writeln(' ----------------------------------------------------------------------');
end;
writeln('=======================================================================');
      writeln;
      write('Mau Ulang Lagi?(Y/T): ');readln(Ul);
   until upcase(Ul)<>'Y';
end.
