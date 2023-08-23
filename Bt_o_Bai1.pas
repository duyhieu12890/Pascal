uses crt;
var s:string;
procedure Ctc(var s:string);
begin
        while pos(#32#32,s) <> 0 do delete(s,pos(#32#32,s),1);
        if s[1] = #32 then delete(s,1,1);
        if s[length(s)] = #32 then delete(s,length(s),1);

end;
procedure sotu(s:string);
var i,st:integer;
begin
        if length(S) = 0 then write('so tu:0')
        else
        begin
        st:=1;
        for i:=1 to length(s) do
        if s[i] = #32 then st:=st+1;
        writeln ('so tu trong khoang trang la:',st);
        end;
        for i:=1 to length(s) do
        if S[i] = #32 then writeln
        else write(s[i]);


end;
procedure sochu(st:string);
var i:integer;
        ch:char;
    a:array['a'..'z'] of byte;
begin
        for ch:='a' to 'z' do a[ch]:=0;
        for i:=1 to length(St) do
        If st[i] <> #32 then a[st[i]]:=a[st[i]]+1;
        for ch:='a' to 'z' do
        if a[ch] <> 0 then writeln(ch,' ',a[ch]);
end;
begin
        clrscr;
        write('nhap xau bat ki:');readln(s);
        Ctc(s);
        writeln('sau khi xoa khoang trang thua la:',s);
        sotu(s);
        readln;
        sochu(s);
        readln;
end.
