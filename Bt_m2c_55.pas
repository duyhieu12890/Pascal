uses crt;
var A:array[1..50,1..50] of integer;
        m,n,i,j,max,bt:integer;
        tongdong:array[1..50] of integer;
begin
     writeln('moi ban nhap so dong:');readln(n);
        writeln('moi ban nhap so cot:');readln(m);
        for i:=1 to n do
        for j:=1 to m do
                begin
                        write('nhap [',i,',',j,']');
                        readln(a[i,j]);
                end;
        for i:=1 to n do
        for j:=1 to n do
        tongdong[i]:=tongdong[i]+A[i,j];
        for i:=1 to n do
        writeln('tong cua dong ',i,' la:',tongdong[i]);
        readln;
        max:=tongdong[1]; bt:=1;
        for i:=1 to n do
        if max < tongdong[i] then
        begin
        max:=tongdong[i];
        bt:=i;
        end;
        writeln('tong dong ',bt,' gia tri lon nhat la:',max);
        readln;
end.