uses crt;
var A:array[1..100] of longint;
        i,n:integer;
        tongchan,tongle:int64;
begin
        write('co may so nguyen:');readln(n);
        for i:=1 to n do
                begin
                        write ('so thu ',i,' ');
                        readln(a[i]);
                end;
        for i:=1 to n do
        if A[i] mod 2 = 0 then tongchan:=tongchan+A[i]
        else tongle:=tongle+A[i];
        writeln('Tong cua so chan la:',tongchan);
        write('Tong cua so le la:',tongle);
        readln;
end.