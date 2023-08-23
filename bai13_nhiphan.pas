uses crt;
var a,b,l,c:array[1..1000] of integer;
    i,lmax,jmax,max,vt,j,n:integer;
begin
        readln(n);
        for i:=1 to n do
        begin
                write('nhap so thu ',i,':');readln(A[i]);
        end;
        L[1]:=1;
        for i:=2 to n do
        begin
                lmax:=0;
                jmax:=0;
                for j:=1 to i-1 do
                if A[i] > A[j] then
                if l[i] > lmax then
                begin
                        lmax:=l[j];
                        jmax:=j;
                end;
                L[i]:=lmax+1;
                b[i]:=jmax;
        end;
        max:=l[1];
        vt:=1;
        for i:=2 to n do
        if max<l[i] then
        begin
                max:=l[i]; vt:=i;
        end;
        writeln(max);
        repeat
                //write(A[vt],' ');
                c[vt]:=1;
                vt:=B[vt];
        until vt=0;
        for i:=1 to n do
        if c[i]=1 then write(a[i],' ');
        readln;
end.
