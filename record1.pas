Program DataPegawai_Array;
Uses crt;
Type Pegawai = record
               NIP     : String[9];
               Nama    : String[30];
               Gol     : Char;
               Jamker  : Real;
End;
Var
Data  : Array [1..100] of Pegawai;
Gapok,Insentif,Gaber  : Real;
Tot,Rata              : Real;
Ul                    : Char;
i,n                   : Integer;
Begin
 Repeat
  Clrscr;
  writeln('  PT. Xecolah Yupaya Zandai');
  writeln('================================');
  Write(' Masukkan Jumlah Data Pegawai : ');Readln(n);
  For i := 1 to n do
    Begin
      Clrscr;
      Writeln('Entry Data Pegawai PT. XYZ');
      Writeln('==========================');
      Writeln;
      Writeln('Data Ke-',i);
      Writeln;
      Write('NIP          : ');Readln(Data[i].NIP);
      Write('Nama         : ');Readln(Data[i].Nama);
      Write('Golongan     : ');Readln(Data[i].Gol);
      Write('Jam Kerja    : ');Readln(Data[i].Jamker);
      Writeln;
    End;
  Clrscr;
  Writeln(' Laporan Gaji Pegawai');
  writeln('  PT. Xecolah Yupaya Zandai');
  writeln('================================');
  Writeln;
Writeln('=============================================================================');
  Writeln('|NO. |NIP       | Nama               | Golongan | Jam Kerja | Gaji       |');
Writeln('=============================================================================');
  Tot:=0;
  For i := 1 to n do
    Begin
      Case Data[i].Gol of
      '1'  : Gapok:=1000000;
      '2'  : Gapok:=1500000;
      '3'  : Gapok:=2000000;
      Else
        Gapok:=0;
      End;

      if Data[i].Jamker>200 then Insentif:=(Data[i].Jamker-200)*10000
      else Insentif:=0;
         Gaber:=Gapok+Insentif;
         Tot:=Tot+Gaber;
Writeln('|',i:4,'|',Data[i].NIP:10,'|',Data[i].Nama:20,'|',Data[i].Gol:10,'|'
,Data[i].Jamker:11:0,   '|' ,Gaber:12:0,'|');
    End;
    Rata:=Tot/n;
Writeln('=============================================================================');
  Writeln('Total Gaji Keseluruhan : Rp.',Tot:12:0);
  Writeln('Rata Gaji Pegawai      : Rp.',Rata:12:0);
Writeln;
  Write('Mau Ulang Lagi? [Y/T]: ');Readln(Ul);
 Until Upcase(Ul)<>'Y';
End.
