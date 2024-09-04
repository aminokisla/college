program SumOfSeries;

var
  n: integer;
  i: double;
  sum: double;

begin
  writeln('Введите значение n:');
  readln(n);
  
  sum := 1;
  i := 1;
  
  write('Произведение ряда 1 * 1/2 * 1/3 * ... * 1/', n, ':');
  
  while i <= n do
  begin
    sum := sum * 1 / i;
    i := i + 1;
  end;
  
  writeln(sum:0:50);
end.