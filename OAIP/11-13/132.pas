program StudentInfo;

type
  anketa = record
    fio: string;
    birth: string;
    kurs: 1..5;
  end;

var
  students: array of anketa;
  i: integer;

begin
  
  Write('Введите количество студентов: ');
  ReadLn(i);
  
  SetLength(students, i);
  
  for i := 0 to High(students) do
  begin
    writeln;
    Write('Введите ФИО студента ', i + 1, ': ');
    ReadLn(students[i].fio);
    
    Write('Введите дату рождения студента ', i + 1, ': ');
    ReadLn(students[i].birth);
    
    repeat
      Write('Введите курс студента (от 1 до 5) ', i + 1, ': ');
      ReadLn(students[i].kurs);
    until (students[i].kurs >= 1) and (students[i].kurs <= 5);
  end;
  
  
  writeln;
  writeln('Данные о студентах:');
  for i := 0 to High(students) do
  begin
    writeln;
    writeln('Студент ', i + 1);
    writeln('ФИО: ', students[i].fio);
    writeln('Дата рождения: ', students[i].birth);
    writeln('Курс: ', students[i].kurs);
  end;
  
end.
