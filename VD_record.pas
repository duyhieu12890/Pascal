uses crt;
type hocsinh = record
                ht,ns,qq:string;
                dtb:real;
                xl:char;
         end;
var A:array[1..100] of hocsinh;
   i,n,j:integer;
   tam:hocsinh;
begin
        writeln('Nhap so HS:');readln(n);
        for i:=1 to n do
                begin
                writeln('nhap thong tin hs thu ',i);
                write('Ho ten:'); readln(a[i].ht);
                write('Ngay Sinh:'); readln(a[i].ns);
                write('Que quan:'); readln(a[i].qq);
                write('DTB:'); readln(a[i].dtb);
                if a[i].dtb < 5 then a[i].xl:='D' else
                if a[i].dtb < 6.5 then a[i].xl:= 'C' else
                if a[i].dtb < 8 then a[i].xl:='B' else
                a[i].xl:='A';
                end;
        for i:=1 to n-1 do
        for j:=i+1 to n do
        if a[i].dtb < a[j].dtb then
        begin
                tam:=a[i];
                a[i]:=a[j];
                a[j]:=tam;
        end;
        writeln('Danh sach HS:');
        for i:=1 to n do
        write(a[i].ht: 20, a[i].ns:15, a[i].qq:20, a[i].dtb:8:2,' ',a[i].xl);
        readln;
end.