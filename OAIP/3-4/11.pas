program project; 
var n, factorial, i: int64;
begin
  write('Введите число n: ');
  readln(n);
  if n < 0 then
    writeln('Факториал определен только для неотрицательных чисел.')
  else
  begin
    factorial := 1;
    i := 0;
    for i:= n downto 1 do
    begin
      factorial := factorial * i;
    end;
    writeln('Факториал ', n, '! равен ', factorial);
  end;
end.