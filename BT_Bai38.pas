uses crt;
var A:array[1..100] of longint;
        i,n:integer;
        x:longint;
begin
        write('co may so nguyen:');readln(n);
        for i:=1 to n do
                begin
                        write ('so thu ',i,' ');
                        readln(a[i]);
                end;
        write('so nguyen x la:');readln(x);
        write('day so la:');
        n:=n+1;
        A[n]:=x;
        for i:=1 to n do write(A[i],' ');
        readln;
end.
