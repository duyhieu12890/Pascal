uses crt;
var f1,f2:text;
n,dem,kt,k,y,m,d,j,i,x,tam:integer;
s,st,st1,tam1,dem1:string;
a:array[1..255] of string;
B:array[1..100] of integer;
begin

clrscr;
    assign(f1,'input.txt');reset(f1);
    assign(f2,'output.out');rewrite(f2);
    readln(f1,m);
    for dem:=1 to m do
    begin
    readln(f1,st);
    n:=length(st);
    for i:=1 to n do B[i]:=i;
    repeat

                st1:='';
                for i:=1 to n do st1:=st1+st[B[i]];
                writeln(st1);
                readln;
                kt:=0;
                for i:=1 to d do
                if st1 = A[i] then
                begin
                        kt:=1;
                        break;
                end;
                if kt=0 then
                begin
                        d:=d+1;
                        A[d]:=st1;
                end;
                i:=n-1;
                while(i>0) and (B[i]>B[i+1]) do i:=i-1;
                if i>0 then
                begin
                        k:=n;
                        while B[k]< B[i] do k:=k-1;
                        tam:=B[i];
                        B[i]:=B[k];
                        B[k]:=tam;
                        x:=i+1;
                        y:=n;
                        while x<y do
                        begin
                                tam:=B[x];
                                B[x]:=B[y];
                                B[y]:=tam;
                                x:=x+1;
                                y:=y-1;
                        end;
                end;
        until i = 0;
    end;
    for i:=1 to d-1 do
    for j:=i+1 to d do
    if (A[i] > A[j]) and (length(a[i]) = length(A[j])) then
    begin
        tam1:=a[i];
        a[i]:=a[j];
        a[j]:=tam1;
    end;
    for i:=1 to d do
    writeln(f2,A[i]);
    close(f1);
    close(f2);
end.

