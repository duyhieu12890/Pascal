uses crt;
var a:array[1..100] of longint;
        i,n:integer;
        tong:int64;
begin
        write('co may so nguyen:');readln(n);
        for i:=1 to n do
                begin
                        write('so thu ',i,' ');
                        readln(A[i]);
                end;
        for i:=1 to n do tong:=tong+A[i];
        write('tong cua cac so vua nhap la:',tong);readln;
end.