uses crt;
var i,j,n,k:integer;
A:array[1..10,1..10] of integer;
begin
    writeln('n =');readln(n);
    j:=n div 2 + 1;
    i:=n div 2 - 1;
    for i:=1 to n do
    begin
        a[i,j]:=k;

        if k mod n = 0 then j:=j+2
        else
        begin
             j:=j+1;
             i:=i-1;
        end;
        if j > n then i:=i mod n;
        if i = 0 then i:=n;
    end;

    for i:=1 to n do
    for j:=1 to n do
    Write(i,j);
end.
