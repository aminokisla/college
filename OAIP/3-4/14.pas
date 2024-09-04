program project;

var
  number, sum, count: integer;
  average: real;

begin
  sum := 0;
  count := 0;

  writeln('Введите числа для вычисления среднего арифметического.');
  writeln('Для окончания ввода введите отрицательное число.');

  repeat
    write('Введите число: ');
    readln(number);

    if number >= 0 then
    begin
      sum := sum + number;
      count := count + 1;
    end;
  until number < 0;

  if count > 0 then
  begin
    average := sum / count;
    writeln('Среднее арифметическое введенных чисел: ', average:0:2);
  end
  else
    writeln('Не введено ни одного числа.');

end.