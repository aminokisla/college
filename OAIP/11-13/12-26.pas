program а1226;

var
  inputFile: file of char;
  outputFileName: string;
  inputChar: char;
  currentPosition: integer;

procedure ReplaceCharactersWithExclamationMarks(var inputFile: file of char);
begin
  while not eof(inputFile) do
  begin
    currentPosition := FilePos(inputFile);
    read(inputFile, inputChar);
    
    if currentPosition mod 2 = 0 then 
      inputChar := '!'; 
    
    seek(inputFile, currentPosition); 
    write(inputFile, inputChar); 
  end;
end;

begin
  assign(inputFile, 'C:\Users\Амина\Desktop\input.txt');

  if not FileExists('C:\Users\Амина\Desktop\input.txtt') then
  begin
    writeln('Input file does not exist');
    exit;
  end;
  
  reset(inputFile);
  
  ReplaceCharactersWithExclamationMarks(inputFile);
  
  close(inputFile);
  
  writeln('Characters replaced successfully!');
end.

