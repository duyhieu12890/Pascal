program bai_toan_day_so;
var a: array[1..50] of integer; // khai báo mảng a gồm 50 số nguyên
    n: integer; // khai báo biến n là số phần tử của mảng a
    i, j, k: integer; // khai báo các biến i, j, k để dùng trong vòng lặp
begin
  write('Nhap so phan tu cua day so (toi da 50): '); // yêu cầu người dùng nhập số phần tử của dãy số
  readln(n); // đọc giá trị n từ bàn phím
  for i := 1 to n do // lặp từ 1 đến n
  begin
    write('Nhap so thu ', i, ': '); // yêu cầu người dùng nhập số thứ i
    readln(a[i]); // đọc giá trị a[i] từ bàn phím
  end;
  writeln('Cac day so trung cua day so la: '); // in ra màn hình câu thông báo
  for i := 1 to n do // lặp từ 1 đến n
  begin
    k := 0; // gán k bằng 0 để đếm số lần xuất hiện của a[i]
    for j := i + 1 to n do // lặp từ i + 1 đến n
    begin
      if a[i] = a[j] then // nếu a[i] bằng a[j]
      begin
        k := k + 1; // tăng k lên 1
        if k = 1 then // nếu k bằng 1, tức là đây là lần đầu tiên tìm thấy số trùng với a[i]
        begin
          write(a[i], ' '); // in ra màn hình giá trị a[i]
        end;
      end;
    end;
    if k > 0 then // nếu k lớn hơn 0, tức là có ít nhất một số trùng với a[i]
    begin
      writeln; // xuống dòng
    end;
  end;
end.