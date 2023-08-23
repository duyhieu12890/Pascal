uses crt;
var s,st:string;i:byte;
begin
        write('nhap vao xau bat ki');readln(s);st:=s;
       // i:=1;
       // while i <= length(s) do
        for i:=1 to length(st) do
        if S[i] in ['0'..'9'] then delete(s,i,1);
       // else i:=i+1;
        write('xau do sau khi xoa so la:',s);readln;
end.
