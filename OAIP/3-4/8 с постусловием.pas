program SumOfSeries;

var
  n: integer;
  i: real;
  sum: real;

begin
  writeln('Введите значение n:');
  readln(n);
  
  sum := 0;
  i := 1;
  
  write('Сумма ряда 1 + 1/2 + 1/3 + ... + 1/', n, ':');
  
  while i <= n do
  begin
    sum := sum + 1 / i;
    i := i + 1;
  end;
  
  writeln(sum:0:4);
end.