program lr12_3;

var
  pon: text;
  s: string;
  
begin
  read(s);
  assign(pon, 'C:\Users\Амина\Desktop\text2.txt');
  append(pon); //дополнение файла
  writeln(pon, s);
  close(pon);
end.
