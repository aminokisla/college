uses graphABC;
var i, j, x1, x2, y1, y2, N: integer;
   h, w: real;
begin   
  x1 := 100; 
  y1 := 100;
  x2 := 300; 
  y2 := 200;
  N := 8;
  h := 200 / N;
  w := 200 / N;
  
  for i := 0 to N-1 do
  begin
    for j := 0 to N-1 do
    begin
      if (i+j) mod 2 = 0 then
        Brush.Color := clWhite
      else
        Brush.Color := clBlack;
      Rectangle(round(x1 + i*h), round(y1 + j*w), round(x1 + (i+1)*h), round(y1 + (j+1)*w));
    end;
  end;
end.
