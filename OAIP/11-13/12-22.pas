program а1222;

var
  inputFile, outputFile: text;
  currentLine, longestLine: string;
  maxLen: integer;

begin
  assign(inputFile, 'C:\Users\Амина\Desktop\input.txt');
  reset(inputFile);

  assign(outputFile, 'C:\Users\Амина\Desktop\output.txt');
  rewrite(outputFile);

  maxLen := 0;
  longestLine := '';

  while not eof(inputFile) do
  begin
    readln(inputFile, currentLine);
    if length(currentLine) >= maxLen then
    begin
      maxLen := length(currentLine);
      longestLine := currentLine;
    end;
  end;

  reset(inputFile);

  writeln(outputFile, longestLine);
  while not eof(inputFile) do
  begin
    readln(inputFile, currentLine);
    if currentLine <> longestLine then
      writeln(outputFile, currentLine);
  end;

  close(inputFile);
  close(outputFile);
end.
