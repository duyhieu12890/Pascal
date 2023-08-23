uses crt;
var x,n,i,j,tmp:integer;
A:array [1..100] of integer;
begin
    write('co bao nhieu phan tu:');readln(n);
    for i:=1 to n do
    begin
        write('so nguyen thu ',i,' la:');
        readln(A[i]);
    end;
    tmp:=0;
    for i:=1 to n do
    for j:=i to n do
    if A[i] < A[j] then
    begin
        tmp:=a[j];
        A[j]:=A[i];
        A[i]:=tmp;
    end;
    Write('Sau khi sap xep theo thu tu giam dan la:');
    for i:=1 to n do
    write(A[i],' ');
    readln;
    write('nhap 1 so nguyen bat ki:');readln(x);
    for i:=1 to n do
    if A[i] = x then
    begin
        tmp:=i;
        break;
    end
    else if A[i] < x then
    begin
        tmp:=i;
        break;
    end;
    for i:=n downto tmp do
    begin
        A[i+1]:=A[i];
        if i = tmp then A[tmp]:=x;
    end;
    write('so nguyen vua nhap sau khi chen la:');
    for i:=1 to n+1 do
    write(A[i],' ');
    readln;
end.

