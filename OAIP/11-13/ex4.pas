program lr12_4;

var
 f,g:text;
 k,i:integer;
 s:string;
begin
 readln(k);
 inc(k);
 assign(f,'C:\Users\Амина\Desktop\text3.txt');
 reset(f);
 assign(g,'C:\Users\Амина\Desktop\text4.txt');
 rewrite(g);
 while not eof(f) do
  begin
   readln(f,s);
   inc(i);
   if i=k-1 then writeln(g);
   writeln(g,s);
  end;
 close(f);
 close(g);
deletefile('C:\Users\Амина\Desktop\text3.txt');
renamefile('C:\Users\Амина\Desktop\text4.txt','C:\Users\Амина\Desktop\text3.txt');
end.
