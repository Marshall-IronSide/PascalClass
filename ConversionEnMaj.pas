program Majuscule;
uses wincrt;
var
  chaine, chaineMajuscule: string;
  i: integer;
begin
  writeln('Entrez une chaine de caracteres :');
  readln(chaine);
  
  chaineMajuscule := '';
  for i := 1 to length(chaine) do
  begin
    chaineMajuscule := chaineMajuscule + upcase(chaine[i]);
  end;
  
  writeln(chaine,' en majuscules est : ', chaineMajuscule);
end.
