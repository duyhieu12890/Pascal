uses crt;
var s:string;
    st,i:integer;
    f1,f2:text;
begin
       assign(f1,'THO.DAT');
       reset(f1);
       assign(f2,'SO TU.DAT');
       rewrite(f2);
       While not EOF(f1) do
       begin
        readln(f1,s);
        while pos(#32#32,s) <> 0 do delete(s,pos(#32#32,s),1);
        if s[1] = #32 then delete(s,1,1);
        if s[length(s)] = #32 then delete(s,length(s),1);
        if length(S) = 0 then write(f2,'0')
                else
                begin
                        st:=1;
                        for i:=1 to length(s) do
                        if s[i] = #32 then st:=st+1;
                        writeln (f2,st);
                end;
        end;
        close(f1);
        close(f2);
end.
