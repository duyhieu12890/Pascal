uses crt;
var a,b,c:real;
    kt:byte;
function dodai(d,e:real):real;  //Tinh do dai canh duong trung tuyen
var tmp:real;                   //neu tam giac do la tam giac vuong
begin        
    tmp:=d*d+e*e;
    dodai:=sqrt(tmp);
end;
begin
    write('nhap a:');readln(a);
    write('nhap b:');readln(b);
    write('nhap c:');readln(c);
    kt:=0;
    if (a+b > c) and (a+c > b) and (b+c > a) then kt:=1
    else kt:=0;  //bien kiem tra xem co la tam giac vuong
    if kt = 0 then write('ba so a,b,c khong the tao thanh 1 tam giac!')
    else if kt = 1 then
    begin
        writeln('ba canh do co the tao tam giac');
        if a*a+b*b = c*c then //Tam giac vuong tai 2 canh a,b
        begin
            writeln('dien tich tam giac la:',a*b/2:0:2);
            writeln('duong trung tuyen thu 1 dai la:',c/2:0:2); //
            writeln('duong trung tuyen thu 2 dai la:',dodai(b/2,a):0:2);
            write('duong trung tuyen thu 3 dai la:',dodai(a/2,b):0:2);
        end else 
        if a*a+c*c = b*b then //Tam giac vuong tai 2 canh a,c
        begin 
            writeln('dien tich tam giac la:',a*c/2:0:2);
            writeln('duong trung tuyen thu 1 dai la:',b/2:0:2); //
            writeln('duong trung tuyen thu 2 dai la:',dodai(c/2,a):0:2);
            write('duong trung tuyen thu 3 dai la:',dodai(a/2,c):0:2);
        end else 
        if b*b+c*c = a*a then //Tam giac vuong tai 2 canh b,c
        begin
            writeln('dien tich tam giac la:',c*b/2:0:2);
            writeln('duong trung tuyen thu 1 dai la:',a/2:0:2); //
            writeln('duong trung tuyen thu 2 dai la:',dodai(b/2,c):0:2);
            write('duong trung tuyen thu 3 dai la:',dodai(c/2,b):0:2);
        end else
        begin  //Tam giac thuong
            write('dien tich tam giac la:',(a+b+c)/2);

        end;
    end else write('het cuu'); 
    readln;
end.