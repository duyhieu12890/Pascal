program de_qui_ki_tu;
uses crt;
var s:string;
function dequi(s:string):string;  //thieu xoa khoang trang thua
var vt:integer;
begin
        vt:=pos(#32,s);     //Ngan gn:vt gan thay cho pos
        if vt = 0 then dequi:=s
        else dequi:=dequi(copy(s,vt+1,length(s)-vt))+#32+copy(s,1,vt-1);
end;
begin
        write('nhap xau bat ki');readln(s);
        write('dao tu la:',dequi(s));readln;
end.