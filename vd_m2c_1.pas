uses crt;
var a:array[1..50,1..50] of integer; // Khai Bao gom hang doc va hang cot
        n,m,i,l,j,k:integer;
    b:array[1..250] of integer;
{dau tien nhap theo dong r moi dong tiep theo}
//Vi du
begin
        writeln('moi ban nhap so dong:');readln(n); //so dong
        writeln('moi ban nhap so cot:');readln(m); //so cot;
        for i:=1 to n do
        for j:=1 to m do
                begin
                        write('nhap [',i,',',j,']');
                        readln(a[i,j]);
                end;
        l:=m*n;k:=1;
        for i:=1 to n do
        for j:=1 to m do
                begin
                        B[k]:=a[i,j];
                        k:=K+1;
                end;
        for i:=1 to l-1 do
        for j:=i+1 to l do
         if b[i] > b[j] then
                begin
                        K:=b[j];
                        b[j]:=b[i];
                        B[i]:=k;
                end;
                k:=1;
        for i:=1 to n do
        for j:=1 to m do
                begin
                        A[i,j]:=b[k];
                        k:=k+1;
                end;
        write('xap sep la:');
        for i:=1 to n do
        begin
        writeln;
        for j:=1 to m do
                begin
                        write(a[i,j],' ');
                end;
        end;
        readln;
        {for k:=1 to l do
        write(B[k],' ');readln;}
end.
