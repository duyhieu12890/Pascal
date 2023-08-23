uses crt;
var a:array[1..100] of byte;
i,n,j:integer;
begin
        writeln('nhap n:');readln(n);
        for i:=1 to n do a[i]:=0;
        repeat
              for i:=1 to n do write(a[i]);
              writeln;
              i:=n;
              while (i>0) and (a[i]=1) do i:=i-1;
              if i > 0 then
              begin
                 a[i]:=1;
                 for j:=i+1 to n do a[j]:=0;
              end;
        until i=0;
        readln;
end.