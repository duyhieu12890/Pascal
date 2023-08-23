var s:string; so,i:integer;
begin
        write('nhap xau ki tu:');readln(s);
        so:=0;
        for i:=1 to length(s) do
        if S[i] in ['0'..'9'] then
        so:=so+1;
        write('trong xau tren co ',so,' xau ki tu so');
        readln;
end.