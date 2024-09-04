program pyat;

var
  number, divisor: integer;

begin
  writeln('Введите число:');
  readln(number);

  writeln('Натуральные делители числа ', number, ' в порядке убывания:');

  for divisor := number downto 1 do
  begin
    if number mod divisor = 0 then
      writeln(divisor);
  end;
end.