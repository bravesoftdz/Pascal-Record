program nilai_mahasiswa;
uses crt;

type mhsw = record
          nim:integer;
          nama: string[20];
          m:integer;
          end;

type matkul = record
          kode:string[4];
          namamk:string[20];
          sks:integer;
          nilai:real;
          end;
var datamhs:array[1..100] of mhsw;
    datamk:array[1..100,1..10] of matkul;
    i,j,k,m,n:integer;
    totnil,rataan:real;
    totsks:integer;


begin
repeat
clrscr;
  write('Masukkan banyak mahasiswa : ');readln(n);
  for i:= 1 to n do
   begin
    writeln(' Data mahasiswa ke - ',i,' :');
    write('  NIM : ');readln(datamhs[i].nim);
    write('  NAMA : ');readln(datamhs[i].nama);
    writeln('==================');
    write('  Banyak kuliah yang diikuti (maks 10): ');readln(datamhs[i].m);
    for j:=1 to datamhs[i].m do
     begin
     writeln(' Data Mata kuliah ke - ',j,' :');
     write('  Kode Mata Kuliah : ');readln(datamk[i,j].kode);
     write('  Nama Mata Kuliah : ');readln(datamk[i,j].namamk);
     write('  SKS Mata Kuliah : ');readln(datamk[i,j].sks);
     write('  Nilai Mata Kuliah : ');readln(datamk[i,j].nilai);
     writeln('  =========================================');
     writeln;
     end;
     writeln('  =========================================');
     writeln;
     end;

  for i:=1 to n do
    begin
    writeln(' NIM : ',datamhs[i].nim);
    writeln(' NAMA : ',datamhs[i].nama);
    writeln;
    writeln('=====================================================================');
    writeln('  No  |    Kode Mata Kuliah   |  Nama Mata Kuliah   | SKS   | Nilai | ');
    writeln('=====================================================================');
    totnil:=0;
    totsks:=0;
    for j:=1 to datamhs[i].m do
      begin
       totnil:=totnil+datamk[i,j].nilai;
       totsks:=totsks+datamk[i,j].sks;
       writeln(j:5,' | ', datamk[i,j].kode:21,' | ', datamk[i,j].namamk:19,' | ', datamk[i,j].sks:5,' | '
       , datamk[i,j].nilai:6:2);
    end;
      rataan:=totnil/datamhs[i].m;
    writeln('=====================================================================');
    writeln('  Total nilai : ',totnil:6:0);
    writeln('  Total SKS : ',totsks);
    writeln('  Rata-rata nilai : ',rataan:6:2);
    writeln;
    writeln;
    end;
 Write('Mau Ulang Lagi? [Y/T]: ');Readln(jaw); 
 Until Upcase(jaw)<>'Y';
  end.