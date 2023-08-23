uses crt;
type vt = record
    vtbd:integer;
    vtkt:integer;
    end;
var i,dem,kq,n,tmp:integer;
    maxdd:byte;
A:array[1..100] of integer;   
B:array[1..100] of vt;
begin
    write('do dai cua day (nho hon hoac bang 100):');readln(n);
    for i:=1 to n do
    begin
        write('so thu ',i,' :');readln(A[i]);
    end;
    i:=0;
    dem:=0;
    maxdd:=0;
    while i <= n do
    begin
        i:=i+1;
        if (A[i] < A[i+1]) and (i <= n) then
        begin
            dem:=dem+1;
            B[dem].vtbd:=i;
            repeat
                i:=i+1;
                if a[i]>a[i+1] then kq:=1;
            until kq = 1;
            B[dem].vtkt:=i;
            kq:=0;
        end;
    end;
    for i:=1 to dem do
    if B[i].vtkt-B[i].vtbd+1 > maxdd then 
    begin
        maxdd:=B[i].vtkt-B[i].vtbd+1;
        tmp:=i;
    end;
    writeln(tmp);
    write('doan dai nhat lien tiep la:');
    for i:=B[tmp].vtbd to B[tmp].vtkt do //1 2 3 6 4 7 8 4 5 6 7 8 9 4 5 
    write(A[i],' ');
end.