uses crt;
var f1,f2,f3:text;
tmp_1:string;
tmp_2:string;
i:integer;
A:array[1..100] of integer;
B:array[1..100] of integer;
C:array[1..100] of integer;
tmp,n,j:integer;

begin
        assign(f1,'D:\file\SN1.TXT');reset(f1);
        assign(f2,'D:\file\SN2.TXT');reset(f2);
        assign(f3,'D:\file\KQ.OUT');rewrite(f3);
        i:=0;
        while not EOLN(f1) do
          begin
          i:=i+1;
        read(f1,A[i]);
        end;

        i:=0;
        while not EOLN(f2) do
        begin
        i:=i+1;
        read(f2,B[i]);
        end;
        n:=i;

        tmp:=0;
        for i:=1 to n do
        C[i]:=A[i]+B[i];
        for i:=1 to n-1 do
        for j:=i+1 to n do
        if C[i] > C[j] then
        begin
        tmp:=C[j];
        C[j]:=C[i];
        C[i]:=tmp;
        end;
        for i:=1 to n do
        write(f3,C[i],' ');
        close(f1);
        close(f2);
        close(f3);
        readln;
end.
