program StudentInfo;

type
  anketa = record
    fio: string;
    data: string;
    kurs: 1..5;
  end;

var
  student: anketa;

begin
 
  Write('Введите ФИО студента: ');
  Readln(student.fio);
  
  Write('Введите дату рождения студента: ');
  Readln(student.data);
  
  repeat
    Write('Введите курс студента (от 1 до 5): ');
    Readln(student.kurs);
  until (student.kurs >= 1) and (student.kurs <= 5);
  
  writeln('--------------------------------------------------');
  
  Writeln('ФИО студента: ', student.fio);
  Writeln('Дата рождения студента: ', student.data);
  Writeln('Курс студента: ', student.kurs);
  
end.
