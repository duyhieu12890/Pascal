uses crt;
var n,S,k,kt,vt,i,j,min:integer;
f1,f2:text;
A:array[1..100] of integer;
begin
    assign(f1,'doan.inp');reset(f1);
    readln(f1,n,k);
    i:=1;
    for i:=1 to n do
    begin   
        read(f1,A[i]);
    end;
    close(f1);
    assign(f2,'doan.out');rewrite(f2);
    min:=n;
    kt:=0;
    for i:=1 to n do
    begin   
        j:=i;
        S:=a[j];
        while (S < k) and (j<=n) do
        begin   
            j:=j+1;
            S:=S+a[j];
        end;
        if S = k then
        begin
            If min > j - i + 1 then
            begin
                min:=j-i+1;
                vt:=i;
                kt:=1;
            end;
        end;
    end;
        if kt = 1 then write(f2,vt,' ',min)
        else write(f2,'0 ','0');
    close(f2);
end.
