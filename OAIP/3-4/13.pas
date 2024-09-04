program project;

var sum, number, count: integer;
  average: real;

begin
  sum := 0;
  count := 0;
  number := 3;

  repeat
    sum := sum + number;
    number := number + 6;
    count := count + 1;
  until count = 10;

  average := sum / 10;

  writeln('Среднее арифметическое первых 10 чисел ряда: ', average:0:2);
end.