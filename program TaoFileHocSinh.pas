program TaoFileHocSinh;
uses crt;
Type HS = record
  HoTen,NgaySinh,QueQuan:string;
  DiemTB:real;
  XepLoai:char;
end;
var f: text;
  n,i: integer;
  a:array[1..100] of HS;
  {HoTen: array[1..100] of string;
  NgaySinh: array[1..100] of string;
  QueQuan: array[1..100] of string;
  DiemTB: array[1..100] of real;
  XepLoai: array[1..100] of char;}


function TinhXepLoai(diem: real): char;
begin
  if diem < 5 then
    TinhXepLoai := 'D'
  else if diem < 6.5 then
    TinhXepLoai := 'C'
  else if diem < 8 then
    TinhXepLoai := 'B'
  else
    TinhXepLoai := 'A';
end;

begin
  assign(f, 'HOCSINH.TXT');
  rewrite(f);
  write('Nhap so luong hoc sinh: ');
  readln(n);
  if n = 0 then begin
    writeln(f,'==========Begin Write List Students============');
    writeln('Khong co hoc sinh nao duoc ghi');
    writeln(f,'Khong co hoc sinh nao duoc ghi');
    writeln(f,'===========End Write List Students=============');
    end
  else begin
    writeln(f,'==========Begin Write List Students==========');
    for i := 1 to n do
    begin
      writeln('Nhap thong tin hoc sinh thu ', i);
      write('Ho ten: ');
      readln(a[i].HoTen);
      write('Ngay sinh (dd/mm/yyyy): ');
      readln(a[i].NgaySinh);
      write('Que Quan');
      readln(a[i].QueQuan);
      write('Diem trung binh: ');
      readln(a[i].DiemTB);
    end;
    writeln(f,'Ho ten':30,'Que quan':30,'Diem trung binh':30,'Xep loai':20);
    for i:=1 to n do
    begin
      write(f,i,'.');
      a[i].XepLoai := TinhXepLoai(a[i].DiemTB);
      write(f,a[i].HoTen:20);
      write(f,a[i].QueQuan:20);
      write(f,a[i].DiemTB:20:2);
      writeln(f,a[i].XepLoai:10);
    end;
    write(f,'==========End Write List Students============');
    writeln('Danh sach hoc sinh da duoc tao trong file HOCSINH.TXT');
    readln;
  end;
  close(f);
end.

{Chinh Lai Sau Can Cho Dep}
