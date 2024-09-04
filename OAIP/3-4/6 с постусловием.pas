program shestoe;

var
  number, divisor, count: integer;

begin
  writeln('Введите натуральное число:');
  readln(number);

  count := 0;
  divisor := 1;

  writeln('Делители числа ', number, ':');

  while divisor <= number do
  begin
    if number mod divisor = 0 then
    begin
      writeln(divisor);
      count := count + 1;
    end;
    divisor := divisor + 1;
  end;

  writeln('Количество делителей числа ', number, ' равно ', count);
end.