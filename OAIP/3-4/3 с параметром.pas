program tri;
const
 max = 99;

var
  i: integer;
  arr: array[1..max] of integer;

begin
  
  for i := 1 to max do
  begin
    if i mod 2 = 0 then
      arr[i]:= i
  end;
  for i := 2 to max do
  begin
    if arr[i] > 0 then
      writeln(arr[i])
  end;
end.