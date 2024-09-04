program sem;

uses Math;

var
  x, y, start, finish, step: real;

begin
  writeln('Введите начало отрезка:');
  readln(start);
  
  writeln('Введите конец отрезка:');
  readln(finish);

  writeln('Введите шаг');
  readln(step);
  
  x := start;
  
  writeln('x      |      y');
  writeln('-----------------');
  
  while x <= finish do
  begin
    y := 3 * x * x - power(2, x);
    writeln(x:6:2, '  |  ', y:8:2);
    x := x + step;
  end;
end.
