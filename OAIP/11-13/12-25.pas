program а1225;

var
  inputFile: text;
  number, prevNumber, nextNumber, localMax: real;

begin

  assign(inputFile, 'C:\Users\Амина\Desktop\input.txt');
  reset(inputFile);

  localMax := 0; 
  prevNumber := 0; 
  nextNumber := 0; 
  while not eof(inputFile) do
  begin
    prevNumber := number; 
    read(inputFile, number); 
    nextNumber := number; 

    if (number > prevNumber) and (number > nextNumber) then
      localMax := number;
  end;

  writeln('Последний локальный максимум: ', localMax);

  close(inputFile);
end.
