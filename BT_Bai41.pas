uses crt;
var A:array[1..100] of longint;
        i,n,j:integer;
        tam:longint;
begin
        write('co may so nguyen:');readln(n);
        for i:=1 to n do
                begin
                        write ('so thu ',i,' ');
                        readln(a[i]);
                end;
        for i:=1 to n do
        for j:=i+1 to n do
                if A[i] > A[j] then
                        begin
                                tam:=a[i];
                                A[i]:=a[j];
                                A[j]:=tam;
                        end;

         for i:=1 to n do write(A[i],' ');
         readln;
end.