uses crt;
var n:integer;
function luythua16(a:integer):integer;
var i:integer;
begin
     luythua16:=1;
     for i:=1 to a do
     luythua16:=luythua16*16;
end;
procedure helucphan;
var a,tmp:string;
lc:char;
tam,tong,b,i:integer;
begin
        writeln('lua chon n so sang chu');
        writeln('lua chon l chu sang so');
        readln(lc);
     if lc = 'n' then
     begin
     writeln('n =');readln(n);
     tmp:='';
     while n <> 0 do
     begin
          tam:=n mod 16;
          if tam > 9 then
          begin
          insert(chr(tam+55),tmp,1);
          end
          else
          begin
          str(tam,a);
          insert(a,tmp,1);
          end;
          n:=n div 16;
     end;
     writeln(tmp);
     end
     else
     begin
     write('tmp =');readln(tmp);
     tmp:=Upcase(tmp);
     tam:=0;
     tong:=0;

     for i:=1 to length(tmp) do
     if tmp[i] in ['A'..'F'] then
     begin
        tam:=ord(tmp[i])-55;
        tong:=tong+tam*luythua16(length(tmp)-i);
     end
     else
     begin
                val(tmp[i],b);
                tong:=tong+b*luythua16(length(tmp)-i);
     end;
     writeln(tong);
     end;
end;

begin
        helucphan;
        readln;
end.
