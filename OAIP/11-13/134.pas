program ToyInfo;

type
  toy = record
    name: string;
    price: real;
    age: string;
  end;

var
  toys: array of toy;
  i: integer;
  f: text;

procedure PrintToyData(t: toy);
begin
  writeln(f, 'Название: ', t.name);
  writeln(f, 'Цена: ', t.price:0:2);
  writeln(f, 'Возрастной диапазон: ', t.age);
  writeln(f);
end;

begin
  Assign(f, 'C:\Users\Амина\Desktop\text7.txt');
  Rewrite(f);

 
  SetLength(toys, 3);

  with toys[0] do
  begin
    name := 'Мячик';
    price := 100;
    age := '0+';
  end;

  with toys[1] do
  begin
    name := 'Кукла';
    price := 249.99;
    age := '3+';
  end;

  with toys[2] do
  begin
    name := 'Конструктор';
    price := 2000;
    age := '5+';
  end;

  
  for i := 0 to High(toys) do
  begin
    writeln(f, 'Информация о товаре ', i + 1);
    PrintToyData(toys[i]);
  end;

  Close(f);
end.