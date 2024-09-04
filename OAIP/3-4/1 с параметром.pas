program pervaya;

var
  inches: integer;

begin
  writeln('Дюймы  |  Сантиметры');
  writeln('-------------------');
  for inches := 1 to 20 do
  begin
    writeln(inches, '      |  ', inches * 2.54:0:2);
  end;
end.