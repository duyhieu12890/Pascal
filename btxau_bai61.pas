uses crt;
var s:string;i:byte;
begin
        write('nhap vao mot xau bat ky:');readln(s);
        while pos(#32#32,s) <> 0 do delete (s,pos(#32#32,s),1);
        if s[1] = #32 then delete(s,1,1);
        if s[length(s)] = #32 then delete(s,length(s),1);
        writeln('tu chuan bi tac ra la:',s);
        for i:=1 to length(s) do if s[i] = ' ' then writeln else write(s[i]);
        readln;

end.


