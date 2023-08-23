uses crt;
var a,b,c,tmp:integer;
begin
    write('nhap a:');readln(a);
    write('nhap b:');readln(b);
    write('nhap c:');readln(c);
    tmp:=b*b-4*a*c;
    if tmp < 0 then write('phuong trinh vo nghiem')
    else if tmp = 0 then 
    begin
        writeln('phuong trinh co nghiem kep');
        write('x1 = x2 = ',-b/2*a);
    end else if tmp > 0 then 
    begin
        writeln('phuong trinh co nghiem sau:');
        writeln('x1 = ',(-b+sqrt(tmp))/2*a:0:2);
        write('x2 = ',(-b-sqrt(tmp))/2*a:0:2);
    end else write('het cuu');
    readln;
end.