program dva;

var
  i: integer;

begin
  writeln('Число  |  Квадрат');
  writeln('----------------');
  for i := 1 to 100 do
  begin
    writeln(i, '      |  ', i * i);
  end;
end.