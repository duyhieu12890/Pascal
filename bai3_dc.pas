uses crt;
var s:string;
    i,tmp,tam:integer;
A:array[1..50] of string;  //bien cua day so trong xau
B:array[1..10] of byte;  //bien kiem tra so do bi trung lap
begin
    write('nhap day so bat ki khong qua 50 chu so:');readln(s);
    tmp:=length(s);
    val(s,tam);
    for i:=1 to tmp do A[i]:=s[i];
    for i:=1 to tmp do 
    tam:=
    readln;
end.
