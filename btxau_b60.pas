var s:string;i,sotu:byte;
begin
        write('nhap vao xau bat ki ');readln(s);
        while pos(#32#32,s) <> 0 do delete (s,pos(#32#32,s),1);
        if s[1] = #32 then delete(s,1,1);
        if s[length(s)] = #32 then delete(s,length(s),1);
        sotu:=0;
        for i:=1 to length(s) do
        if s[i] = ' ' then sotu:=sotu+1;
        if length(s) = 0 then writeln('so tu la :0') else writeln('so tu la:',sotu+1);
        write('xau sau khi xoa khoang trang thua la:',s);readln;
end.