var s:string;sotu,i:byte;
begin
        write('viet vao xau ki tu bat ki:');readln(s);
        sotu:=0;
        for i:=1 to length(s) do
        if S[i] = ' ' then
        sotu:=sotu+1;
        write('so tu cua xau ki tu la:',sotu);readln;
end.
