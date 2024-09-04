uses GraphABC;
begin
// Рисование квадрата
SetPenColor(clblue);
MoveTo(100, 100);
LineTo(200, 100);
LineTo(200, 200);
LineTo(100, 200);
LineTo(100, 100);

// Рисование равностороннего треугольника
SetPenColor(clred);
MoveTo(300, 100);
LineTo(400, 100);
LineTo(350, 100 + Round((400-300)*sqrt(3)/2)); // Вычисление координаты y для вершины треугольника
LineTo(300, 100);
end.