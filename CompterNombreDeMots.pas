program CompterMots;
uses wincrt;
var
  phrase: string;
  i, nombreMots: integer;
begin
  writeln('Entrez une phrase :');
  readln(phrase);
  
  nombreMots := 1;
  for i := 1 to length(phrase) do
    begin
        if phrase[i] = ' ' then
        nombreMots := nombreMots + 1;
    end;
  
  writeln('Nombre de mots dans la phrase : ', nombreMots);
end.
