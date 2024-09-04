program happy_ticket;

const
  max = 6;

var
  arr: array[1..max] of integer;
  num: longint;
  pointer, i, sum1, sum2: integer;

begin
  writeln('Введите число');
  readln(num);
  
  pointer := 1;
  while num <> 0 do
  begin
    arr[pointer] := num mod 10;
    num := num div 10;
    pointer := pointer + 1;
  end;

  sum1 := 0;
  sum2 := 0;
  for i := 1 to 3 do
  begin
    sum1 := sum1 + arr[i];
  end;
  for i := max downto (max - 2) do
  begin
    sum2 := sum2 + arr[i];
  end;

  if (sum1 = 13) and (sum1 = sum2) then
    writeln('Счастливый');
  else
    writeln('Не счастливый')
end.