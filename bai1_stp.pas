uses crt;
var lc:char;
n:integer;
s:string;
procedure sonhiphan;
var a:string;
tmp:string;
tam:integer;
begin
        tmp:='';
        while n <> 0 do
        begin
            tam:=n mod 2;
            str(tam,a);
            insert(a,tmp,1);
            n:=n div 2;
        end;
        write(tmp);
end;
function luythua(a:integer):integer;
var i:integer;
begin
     luythua:=1;
     for i:=1 to a do
     luythua:=luythua*2;
end;
procedure sothapphan;
var i,tmp,tam:integer;
begin
     tmp:=0;
     for i:=1 to length(s) do
     begin
     if s[i] = '1' then
        tmp:=tmp+luythua(length(s)-i);
     end;
     write(tmp);
end;

begin
     writeln('nhan n doi mot so thap phan sang day so nhi phan');
     writeln('nhan t doi day so nhi phan sang so than phan');
     readln(lc);
     if (lc = 'n') or (lc = 'N') then
     begin
        write('so thap phan:');readln(n);
        sonhiphan;
        readln;
     end
     else if (lc = 't') or (lc = 'T') then
     begin
        write('so nhi phan:');readln(s);
        sothapphan;
        readln;
     end
     else write('Lua chon khong dung. exit');
end.
