program InverserChaine;
uses wincrt;
var
  chaine, chaineInverse: string;
  i: integer;
begin
  writeln('Entrez une chaine de caracteres :');
  readln(chaine);
  
  chaineInverse := '';
  for i := length(chaine) downto 1 do
    begin
        chaineInverse := chaineInverse + chaine[i];
    end;
  
  writeln('Chaine inverse : ', chaineInverse);
end.
