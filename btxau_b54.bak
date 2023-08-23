uses crt;
var a,b,h,g:string;i,c,d,e,f,t,kitu:byte;
begin
        write('so a(ko qua 255 so):');readln(a);
        write('so b(ko qua 255 so):');readln(b);
        kitu:=length(a);
        if kitu >= length(b) then
                begin
                        c:=length(a)-length(b);
                        for i:=1 to c do b:='0'+b;
                end
        else begin
                c:=length(b)-length(a);
                for i:=1 to c do a:='0'+a;
             end;
        writeln('a hien tai la:',a);
        writeln('b hien tai la:',b);readln;
        t:=0;
        for i:=length(a) downto 1 do
        begin
                val(a[i],c);
                val(b[i],d);
                e:=c+d+t;
                f:=e mod 10;
                t:=e div 10;
                str(f,g);
                h:=g+h;
        end;
        if t <> 0 then begin
                        str(t,g);
                        h:=g+h;
                        end;
        write('tong cua a va b la',h);
        readln;
end.