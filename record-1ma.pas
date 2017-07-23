program database1;
uses crt;
type mahasiswa=record
              nama:array[1..20] of string;
              nim:array[1..20] of string;
              alamat:array[1..20] of string;
              ipk:array[1..20] of real;
              end;
var mhs:mahasiswa;
    nama1,nim1,alamat1:string;IPK1:real;
    i,n,no:integer;
    pilih,tekan:char;
 begin
    clrscr;
    write('Masukkan jumlah mahasiswa : ');readln(n);
    writeln;
    for i:=1 to n do
    begin
     writeln('Masukkan data mahasiswa ke - ',i);
     writeln;
     write('Nama Mahasiswa : ');readln(mhs.nama[i]);
     write('No. Mahasiswa : ');readln(mhs.nim[i]);
     write('Alamat Mahasiswa : ');readln(mhs.alamat[i]);
     write('IPK : ');readln(mhs.ipk[i]);
     writeln;
     end;
      writeln;
      writeln('DATA MAHASISWA');
      writeln;
      writeln('=============================================================================');
      writeln('|','No':5,'Nama':20,'NIM':10,'Alamat':20,'IPK':10,'|':2);
      writeln('=============================================================================');
      for i:=1 to n do
       writeln('|',i:5,mhs.nama[i]:20,mhs.nim[i]:10,mhs.alamat[i]:20,mhs.ipk[i]:10:2,'|':2);
       writeln('============================================================================');
       writeln;
       write('Ingin mencari data tertentu (y/n) ? ');readln(pilih);
       writeln;
       case upcase(pilih) of
       'Y':begin
        tekan:='Y';
        while upcase(tekan)='Y' do
        begin
          writeln;
          writeln('MENU PILIHAN');
          writeln;
          writeln('[1] NAMA');
          writeln('[2] NIM');
          writeln('[3] ALAMAT');
          writeln('[4] IPK');
          writeln;
         write('Pilihan Anda : ');readln(no);
        case no of
        1:begin
         write('Masukkan Nama Mahasiswa : ');readln(nama1);
         writeln;
         writeln('==========================================================================');
         writeln('|','Nama':20,'NIM':10,'Alamat':20,'IPK':10,'|':2);
         writeln('==========================================================================');
         for i:=1 to n do
          if (upcase(nama1)=upcase(mhs.nama[i])) then
           begin
           writeln('|',mhs.nama[i]:20,mhs.nim[i]:10,mhs.alamat[i]:20,mhs.ipk[i]:10:2,'|':2);
           end;
          writeln('=========================================================================');
          writeln;
          end;
        2:begin
        write('Masukkan No. Mahasiswa : ');readln(nim1);
        writeln;
        writeln('==========================================================================');
        writeln('|','Nama':20,'NIM':10,'Alamat':20,'IPK':10,'|':2);
        writeln('==========================================================================');
         for i:=1 to n do
         if (nim1=mhs.nim[i]) then
          begin
          writeln('|',mhs.nama[i]:20,mhs.nim[i]:10,mhs.alamat[i]:20,mhs.ipk[i]:10:2,'|':2);
          end;
         writeln('=========================================================================');
         writeln;
         end;
        3:begin
        write('Masukkan Alamat Mahasiswa : ');readln(alamat1);
        writeln;
        writeln('=========================================================================');
        writeln('|','Nama':20,'NIM':10,'Alamat':20,'IPK':10,'|':2);
        writeln('=========================================================================');
        for i:=1 to n do
         if (upcase(alamat1)=upcase(mhs.alamat[i])) then
         begin
         writeln('|',mhs.nama[i]:20,mhs.nim[i]:10,mhs.alamat[i]:20,mhs.ipk[i]:10:2,'|':2);
         end;
        writeln('=========================================================================');
        writeln;
        end;
       4:begin
       write('Masukkan IPK : ');readln(ipk1);
       writeln;
       writeln('==========================================================================');
       writeln('|','Nama':20,'NIM':10,'Alamat':20,'IPK':10,'|':2);
       writeln('==========================================================================');
       for i:=1 to n do
        if (ipk1=mhs.ipk[i]) then
         begin
         writeln('|',mhs.nama[i]:20,mhs.nim[i]:10,mhs.alamat[i]:20,mhs.ipk[i]:10:2,'|':2);
         end;
        writeln('=========================================================================');
        writeln;
        end;
       end;
       write('Ingin mencari data lagi (y/n) ? ');readln(tekan);
       writeln;
       end;
     { readln;}
      end;end;
end.
