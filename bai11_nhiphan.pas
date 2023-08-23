uses crt;
type vt = record
    vtbd:integer;
    vtkt:integer;
    end;
 var i,dem,j,d,kq,n:integer;
A:array[1..100] of integer;   
B:array[1..100] of vt;
begin
    write('nhap do dai cua mang :');readln(n);
    for i:=1 to n do
    begin
        write('nhap so thu ',i,':');readln(a[i]);
    end;
    i:=0;
    dem:=0;
    d:=0;
    kq:=0;
    while i <= n do
    begin
        i:=i+1;
        if (A[i] < A[i+1]) and (i<=n) then 
        begin
            d:=d+1;
            B[d].vtbd:=i;
            repeat
                i:=i+1;
                if a[i]>a[i+1] then kq:=1;
            until kq = 1;
            B[d].vtkt:=i;
            kq:=0;
            dem:=dem+1;
        end;
    end;
    write('co ',dem,' day so la:');
    for i:=1 to d do
    for j:=b[i].vtbd to b[i].vtkt do
    write(A[j],' ');   //6 5 3 2 3 4 2 7 
    readln;
end.