program а1224;

var
  inputFile: text;
  number: integer;
  index, sum: integer;

begin
  // Открываем файл для чтения
  assign(inputFile, 'C:\Users\Амина\Desktop\input.txt');
  reset(inputFile);

  sum := 0;
  index := 1;

  // Вычисляем сумму чисел с четными номерами
  while not eof(inputFile) do
  begin
    read(inputFile, number);
    if index mod 2 = 0 then
      sum := sum + number;
    index := index + 1;
  end;

  // Выводим результат
  writeln('Сумма чисел с четными номерами: ', sum);

  // Закрываем файл
  close(inputFile);
end.
