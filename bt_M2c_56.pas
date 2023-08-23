uses crt;
var A:array[1..50,1..50] of integer;
        m,n,i,j:integer;
        tongchinh,tongphu:longint;
begin
    write('moi ban nhap m dong m cot:');readln(m);
    for i:=1 to m do
    for j:=1 to m do
        begin
                write('A[',i,',',j,']');
                readln(A[i,j]);
        end;
    writeln('mang vua nhap la:');
    for i:=1 to m do
    begin
    for j:=1 to m do write(A[i,j],' ');
    writeln;
    end;
    readln;

    tongchinh:=0;
    for i:=1 to m do
    tongchinh:=tongchinh+A[i,i];
    write(tongchinh);
    readln;
    tongphu:=0;
    for i:=1 to m do
    tongphu:=tongphu+A[i,m-i+1];
    write('tong cheo phu la:',tongphu);readln;
end.