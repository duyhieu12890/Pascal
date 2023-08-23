uses crt;
var A:array[1..100] of longint;
        i,so,n:integer;
        x:longint;
begin
        write('co may so nguyen:');readln(n);
        for i:=1 to n do
                begin
                        write ('so thu ',i,' ');
                        readln(a[i]);
                end;
        write('so nguyen x la:');readln(x);
        so:=0;
        for i:=1 to n do
        if A[i] < x then so:=so+1;
        write('co ',so,' so nguyen nho hon x');
        readln;
end.
