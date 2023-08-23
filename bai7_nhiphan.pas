uses crt;
var tmp,j,i,m,n,vt:integer;
A:array[1..100] of integer;
begin
    write('nhap n:');readln(n);
    write('nhap m:');readln(m);
    for i:=1 to n do
    begin
    write('nhap phan tu ',i,':');readln(A[i]);
    end;
    vt:=0;
    {for i:=1 to n-m+1 do
    for j:=i to i+m-1 do
    begin
          tmp:=A[i]+A[i+1]+A[i+2];
          if tmp > A[j]+A[j+1]+A[j+2] then tmp:=i
          else if tmp < A[j]+A[j+1]+A[j+2] then tmp:=i+1
          else if tmp = A[j]+A[j+1]+A[j+2] then tmp:=i
          else write('het cuu');
    end;   }
    tmp:=A[1]+A[2]+A[3];
    for i:=1 to n-m+1 do
    if tmp < A[i]+A[i+1]+A[i+2] then tmp:=A[j]+A[j+1]+A[j+2];
    for i:=1 to n-m+1 do
    if tmp = A[i]+A[i+1]+A[i+2] then vt:=i;
    for i:=1 to n do
    write('day lon nhat la:');
    for i:=vt to vt+2 do
    write(A[i]);
    readln;

    //write(low(integer));
end.