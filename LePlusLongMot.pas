program Plus_Long_Mot;
var
  phrase, mot, motPlusLong: string;
  i, longueurMot, longueurMax: integer;
begin
  writeln('Entrez une phrase :');
  readln(phrase);
  
  mot := '';
  motPlusLong := '';
  longueurMax := 0;
  
  for i := 1 to length(phrase) do
  begin
    if phrase[i] <> ' ' then
    begin
      mot := mot + phrase[i];
    end
    else
    begin
      longueurMot := length(mot);
      if longueurMot > longueurMax then
      begin
        longueurMax := longueurMot;
        motPlusLong := mot;
      end;
      mot := '';
    end;
  end;
  
  { Vérifier le dernier mot }
  longueurMot := length(mot);
  if longueurMot > longueurMax then
  begin
    motPlusLong := mot;
  end;
  
  writeln('Le mot le plus long est : ', motPlusLong);
end.
