program project;

var
  number, digitCount, digitSum, digitProduct, currentDigit: integer;
  
begin
  writeln('Введите число:');
  readln(number);

  digitCount := 0;
  digitSum := 0;
  digitProduct := 1;

  repeat
    currentDigit := number mod 10; // Получаем последнюю цифру числа
    digitCount := digitCount + 1; // Увеличиваем счетчик цифр на 1
    digitSum := digitSum + currentDigit; // Добавляем текущую цифру к сумме
    digitProduct := digitProduct * currentDigit; // Умножаем текущую цифру на произведение
    number := number div 10; // Убираем последнюю цифру числа
  until number = 0;

  writeln('Количество цифр числа: ', digitCount);
  writeln('Сумма цифр числа: ', digitSum);
  writeln('Произведение цифр числа: ', digitProduct);
end.

