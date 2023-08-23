program de_qui;
uses crt;
var s:string;
function dequi(s:string):string;
begin
        if length(s) = 1 then dequi:=s
        else dequi:=s[length(s)]+dequi(copy(s,1,length(s)-1));
end;
begin
        write('nhap mot xau bat ki:');readln(s);
        write(dequi(s));readln;
end.
