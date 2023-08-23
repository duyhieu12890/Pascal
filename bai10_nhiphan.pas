uses crt;
var m,n,j,tmp,i,dem_A,dem_b:integer;
A:array[1..100] of integer;
B:array[1..100] of integer;
C:array[1..100] of integer;
begin
    write('m =');readln(m);
    write('n =');readln(n);
    writeln('mang A');
    for i:=1 to m do
    begin
        write('phan tu ',i,' la:');readln(A[i]);
    end;
    writeln('Mang B:');
    for i:=1 to n do
    begin
        write('phan tu ',i,' la:');readln(B[i]);
    end;
    tmp:=0;
    for i:=1 to m do
    for j:=i to m do
    if A[i] < A[j] then
    begin
        tmp:=a[j];
        A[j]:=A[i];
        A[i]:=tmp;
    end;
    Write('Sau khi sap xep mang A theo thu tu giam dan la:');
    for i:=1 to m do
    write(A[i],' ');
    writeln;
    tmp:=0;
    for i:=1 to n do
    for j:=i to n do
    if B[i] < B[j] then
    begin
        tmp:=B[j];
        B[j]:=B[i];
        B[i]:=tmp;
    end;
    Write('Sau khi sap xep mang B theo thu tu giam dan la:');
    for i:=1 to n do
    write(B[i],' ');
    dem_a:=1;
    dem_b:=1;
    i:=1;
    while i<=m+n do
    if a[dem_a] > b[dem_b] then
    begin
        C[i]:=A[dem_a];
        dem_a:=dem_a+1;
        i:=i+1;
    end else
    if a[dem_a] < b[dem_b] then
    begin
        C[i]:=b[dem_b];
        dem_b:=dem_b+1;
        i:=i+1;
    end else
    if a[dem_a] = b[dem_b] then
    begin
        C[i]:=A[dem_a];
        i:=i+1;
        C[i]:=B[dem_b];
        i:=i+1;
        dem_a:=dem_a+1;
        dem_b:=dem_b+1;
    end else write('het cuu');
    writeln;
    write('mang C sau khi gop mang A,B va sap xep gia dan la:');
    for i:=1 to m+n do
    write(C[i],' ');
    readln;
end.
