program а1221;

var
  inputFile, outputFile: text;
  currentChar, lastSpace: char;
  foundSpace: boolean;

begin

  assign(inputFile, 'C:\Users\Амина\Desktop\input.txt');
  reset(inputFile);


  assign(outputFile, 'C:\Users\Амина\Desktop\output.txt');
  rewrite(outputFile);

  foundSpace := false;
  while not eof(inputFile) do
  begin
    read(inputFile, currentChar);
    if currentChar = ' ' then
    begin
      lastSpace := currentChar;
      foundSpace := true;
    end;
  end;

  reset(inputFile);

  while not eof(inputFile) do
  begin
    read(inputFile, currentChar);
    if foundSpace and (currentChar = lastSpace) then
      break
    else
      write(outputFile, currentChar);
  end;

  close(inputFile);
  close(outputFile);
end.
