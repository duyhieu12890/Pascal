program TaoFileHocSinh;
uses crt;
const
  MAX = 100; // số lượng học sinh tối đa
var
  f: text; // file HOCSINH.TXT
  n: integer; // số lượng học sinh thực tế
  i: integer; // biến đếm
  HoTen: array[1..MAX] of string; // mảng lưu họ tên học sinh
  NgaySinh: array[1..MAX] of string; // mảng lưu ngày sinh học sinh
  QueQuan: array[1..MAX] of string; // mảng lưu quê quán học sinh
  DiemTB: array[1..MAX] of real; // mảng lưu điểm trung bình học sinh
  XepLoai: array[1..MAX] of char; // mảng lưu xếp loại học sinh

// Hàm tính xếp loại dựa trên điểm trung bình
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
  clrscr; // xóa màn hình
  assign(f, 'HOCSINH.TXT'); // gán tên file cho biến f
  rewrite(f); // tạo file mới hoặc ghi đè file cũ nếu đã tồn tại

  writeln('Nhap so luong hoc sinh: ');
  readln(n); // nhập số lượng học sinh từ bàn phím

  for i := 1 to n do // lặp n lần
  begin
    writeln('Nhap thong tin hoc sinh thu ', i);
    writeln('Ho ten: ');
    readln(HoTen[i]); // nhập và lưu họ tên học sinh vào mảng HoTen với chỉ số i
    writeln('Ngay sinh (dd/mm/yyyy): ');
    readln(NgaySinh[i]); // nhập và lưu ngày sinh học sinh vào mảng NgaySinh với chỉ số i
    writeln('Que quan: ');
    readln(QueQuan[i]); // nhập và lưu quê quán học sinh vào mảng QueQuan với chỉ số i
    writeln('Diem trung binh: ');
    readln(DiemTB[i]); // nhập và lưu điểm trung bình học sinh vào mảng DiemTB với chỉ số i

    XepLoai[i] := TinhXepLoai(DiemTB[i]); // tính và lưu xếp loại của học sinh vào mảng XepLoai với chỉ số i

    writeln(f, HoTen[i]); // ghi họ tên vào file với chỉ số i
    writeln(f, NgaySinh[i]); // ghi ngày sinh vào file với chỉ số i
    writeln(f, QueQuan[i]); // ghi quê quán vào file với chỉ số i
    writeln(f, DiemTB[i]:0:2); // ghi điểm trung bình vào file với định dạng có hai chữ số sau dấu phẩy và chỉ số i
    writeln(f, XepLoai[i]); // ghi xếp loại vào file với chỉ số i

    writeln('Da nhap xong thong tin hoc sinh thu ', i);
  end;

  close(f); // đóng file

  writeln('Da tao xong file HOCSINH.TXT');
end.