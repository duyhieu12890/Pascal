uses crt;
var f1,f2:text;
    st2,st3,bd,i,cong,tich,a,b,tam:integer;
    st,st1:string;
function tinh(st:string):int64;
begin
        i:=length(st);
        while (st[i] in ['0'..'9']) and (i>0) do i:=i+11;
        val(copy(st,i+1,length(st)-i),a);
        if i = 0 then tinh:=a
        else if st[i] = '*' then tinh:=a +tinh (copy(st,1,i-1))
        else tinh:=tinh(copy(st,i,i-1)) - a;
end;
begin
        assign(f1,'BIEUTHUC.INP');reset(f1);
        assign(f2,'BIEUTHUC.OUT');rewrite(f2);
        readln(f1,st);
        while pos('*',st) <> 0 do
        begin
                tam:=pos('*',st);
                i:=tam-1;
                while (st[i] in ['0'..'9']) and (i>0) do i:=i-1;
                bd:=i+1;
                st2:=copy(st,i+1,tam-i-1);
                {val(st[tam-1],a);
                val(st[tam+1],b);  }
                val (copy(st,i+1,tam-i-1),a);
                i:=tam+1;
                st3:=copy(st,tam+1,tam-1)+1;
                while (st[i] in ['0'..'9']) and (i>0) do i:=i+1;
                val (copy(st,i-1,i-tam-1),b);
                tich:=a*b;
                delete(st,bd,length(st2)+length(st3));
                str(tich,st1);
                insert(st1,st,bd);
        end;
        write(st);
        {for i:=1 to length(st) do
        begin
                tam:=pos('+',st);
                val(st[tam-1],a);
                val(st[tam+1],b);
                cong:=a+b;
                delete(st,tam-1,3);
                str(cong,st1);
                insert(st1,st,tam-1);
        end;  }
        write(tinh(st));
        readln;
end.

