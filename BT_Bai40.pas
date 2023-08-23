uses crt;
var A:array[1..100] of longint;
        i,vt,n:integer;
begin
        write('co may so nguyen:');readln(n);
        for i:=1 to n do
                begin
                        write ('so thu ',i,' ');
                        readln(a[i]);
                end;
        write('vi tri can xoa:');readln(vt);
        {n:=n+1;
        A[vt]:=0;
        for i:=1 to n do
        if A[i] <> 0 then write(A[i],' ');  }
        for i:=vt to n-1 do a[i]:=a[i+1];
        n:=n-1;
        write('day so la:');
        for i:=1 to n do Write(a[i],' ');readln;
        readln;
end.