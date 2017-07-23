program nilai_mahasiswa;
uses crt;

type mhsw = record
          nim:string;
          nama: string[20];
          nilai:real;
          end;

type matkul = record
          kode:string[4];
          namamk:string[20];
          sks:integer;
          m:integer;
          end;
var datamk:array[1..100] of matkul;
    datamhs:array[1..10,1..10] of mhsw;
    i,j,k,m,n:integer; jaw:char;


begin
  repeat
 clrscr;
  write('Masukkan banyak mata kuliah : ');readln(n);
  for i:= 1 to n do
   begin
    writeln(' Data MATA KULIAH ke - ',i,' :');
    write('  Kode Mata Kuliah : ');readln(datamk[i].kode);
    write('  Nama Mata Kuliah : ');readln(datamk[i].namamk);
    write('  SKS Mata Kuliah : ');readln(datamk[i].sks);
    writeln('==================');
    write('  Banyak Mahasiswa yang ikut : ');readln(datamk[i].m);
    for j:=1 to datamk[i].m do
     begin
     writeln(' Data Mahasiswa ke - ',j,' :');
     write('  NIM : ');readln(datamhs[i,j].nim);
     write('  NAMA : ');readln(datamhs[i,j].nama);
     write('  Nilai Mata Kuliah : ');readln(datamhs[i,j].nilai);
     writeln('  =========================================');
     writeln;
     end;
     writeln('  =========================================');
     writeln;
     end;
 clrscr;
  for i:=1 to n do
    begin
    write('  Kode Mata Kuliah : ',datamk[i].kode);
    writeln('  SKS Mata Kuliah : ',datamk[i].sks);
    write('  Nama Mata Kuliah : ',datamk[i].namamk);
    writeln('  Banyak Peserta : ',datamk[i].m);
    writeln;
    writeln('=====================================================================');
    writeln('  No  |       NIM      |          Nama          |  Nilai | ');
    writeln('=====================================================================');
    for j:=1 to datamk[i].m do
    begin
    writeln(j:5,' | ', datamhs[i,j].nim:10,' | ', datamhs[i,j].nama:20,' | ', datamhs[i,j].nilai:6:2);
    end;
    writeln('=====================================================================');
    writeln;
    writeln;
    end;
  Write('Mau Ulang Lagi? [Y/T]: ');Readln(jaw); 
  Until Upcase(jaw)<>'Y';

    end.