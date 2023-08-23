uses crt;
var f1,f2:text;
        n,uc,i:integer;
        A:array[1..100] of integer;
function ucln(a,b:int64):int64;
begin
     if b=0 then ucln:=a
     else ucln:=ucln(B,A mod b)
end;
begin
        assign(f1,'D:\PT.INP');
        reset(f1);
        assign(f2,'D:\PT.OUT');
        rewrite(f2);
        readln(f1,n);
        for i:=1 to n do
        read(f1,A[i]);
        uc:=ucln(a[1],A[2]);
        for i:=3 to n do
        uc:=ucln(uc,A[i]);
        write(f2,uc);
        close(f1);
        close(f2);
end.