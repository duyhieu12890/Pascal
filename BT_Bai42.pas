uses crt;
var A:array[1..100] of longint;
        r,i,vt,n:integer;
        x:longint;
begin
        write('co may so nguyen:');readln(n);
        for i:=1 to n do
                begin
                        write ('so thu ',i,' ');
                        readln(a[i]);
                end;
        write('so nguyen x:');readln(x);
        for i:=1 to n do
        if A[i] = x then r:=1;
        if r = 1 then write('so x co trong mang n')
        else write ('so x khong co trong mang n');
        readln;
end.