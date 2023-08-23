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
        write('day so nhu sau la:');

        for i:=n downto 1 do A[i+1]:=A[i];
        A[1]:=x;
        N:=n+1;
        for i:=1 to n do write(A[i],' ');
        readln;
end.