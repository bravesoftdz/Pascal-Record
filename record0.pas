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
   gapok,insentif,gaber : array [1..10] of real;
   Ul                   : char;
   i,n                  :integer;
begin
 repeat
   clrscr;
   writeln('Entry data Pegawai PT.XYZ');
   writeln('===========================');
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
   case Data[i].Gol of
      '1'       : Gapok[i]:=1000000;
      '2'       : Gapok[i]:=1500000;
      '3'       : Gapok[i]:=2000000;
   else
     Gapok[i]:=0;
   end;

   if data[i].jaker>200 then insentif[i]:=(Data[i].jaker-200)*10000
   else insentif[i]:=0;
      Gaber[i]:=Gapok[i]+insentif[i];
   end;
   clrscr;
   writeln('Laporan Gaji Pegawai');
   writeln('PT XYZ');
   writeln;
writeln('=======================================================================');
writeln('|NIP       |NAMA                |GOLONGAN  |JAM KERJA  | GAJI         |');
writeln('=======================================================================');
for i:=1 to n do
begin
writeln('|',Data[i].NIP:10,'|',data[i].Nama:20,'|',Data[i].Gol:10,'|'
,Data[i].Jaker:11:0,'|',Gaber[i]:14:2,'|');
writeln(' ----------------------------------------------------------------------');
end;
writeln('=======================================================================');
      writeln;
      write('Mau Ulang Lagi?(Y/T): ');readln(Ul);
   until upcase(Ul)<>'Y';
end.
