uses crt;
var f1,f2:text;
n,x,y,k,i,tam:integer;
A:array[1..100] of integer;

begin
        write('n=');readln(n);
        for i:=1 to n do A[i]:=i;
        repeat
                for i:=1 to n do write(A[i],' ');
                //thuc hien hoan vi
                //Tim i
                i:=n-1;
                while(i>0) and (A[i]>a[i+1]) do i:=i-1;
                if i>0 then
                begin
                        //ti k
                        k:=n;
                        while a[k]< a[i] do k:=k-1;
                        //hoan doi gia tri cua A[i] va A[k]
                        tam:=a[i];
                        a[i]:=a[k];
                        a[k]:=tam;
                        //lat de dam bao day hoan vi la tang dan
                        while x<y do
                        begin
                                //hoan doi dia tri cua a[x] va a[y]
                                tam:=a[x];
                                a[x]:=a[y];
                                a[y]:=tam;
                                x:=x+1;
                                y:=y-1;
                        end;


                end;
        until i = 0;
end.