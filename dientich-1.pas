uses crt;
var a,i,j,b,x:integer;
tmp:real;
max,min,Samn:real;
f1,f2:text;
begin
        assign(f1,'DIENTICH.INP');reset(f1);
        assign(f2,'DIENTICH.OUT');rewrite(f2);
        readln(f1,a,b,x);
        writeln(a,b,x);
        writeln(f2,a,' ',b,' ',x);
        writeln(f2,a*b);
        tmp:=((b-x)*x)/2;
        writeln(f2,tmp:0:2);
        max:=0;
        min:=a*b;
        for x:=0 to b do
        begin
                samn:=(a*b)-(b*(a-x))/2-((b-x)*x)/2-(a*x)/2;
                if samn<min then min:=samn;
                if samn>max then max:=samn;
        end;
        writeln(f2,max:6:2);
        writeln(f2,min:6:2);
        close(f1);
        close(f2);
{       write('a=');readln(a);
        write('b=');readln(b);
        write('x=');readln(x);   }

end.
