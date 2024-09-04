program а1223;

var
  inputFile, oddFile, evenFile: text;
  number: real;
  count: integer;

begin
  assign(inputFile, 'C:\Users\Амина\Desktop\input.txt');
  reset(inputFile);

  assign(oddFile, 'C:\Users\Амина\Desktop\text6.txt');
  rewrite(oddFile);

  assign(evenFile, 'C:\Users\Амина\Desktop\text7.txt');
  rewrite(evenFile);

  count := 1;

  while not eof(inputFile) do
  begin
    read(inputFile, number);
    if count mod 2 = 0 then
      writeln(evenFile, number)
    else
      writeln(oddFile, number);
    count := count + 1;
  end;

  close(inputFile);
  close(oddFile);
  close(evenFile);
end.

