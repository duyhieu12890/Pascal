program khong_de_qui;
uses crt;
var s:string;i:byte;
begin
        write('nhap vao xua bat ki:');readln(s);
        for i:=length(s) downto 1 do write(s[i]);
        readln;
end.
