program LireFichier;
type
  Personne = record
    nom: string[50];
    prenom: string[50];
    age: integer;
  end;

var
  fichier: file of Personne;
  p: Personne;

begin
  assign(fichier, 'personnes.dat');
  reset(fichier);//ouverture du fichier en lecture

  while not eof(fichier) do
  begin
    read(fichier, p);
    writeln('Nom : ', p.nom);
    writeln('Prenom : ', p.prenom);
    writeln('Age : ', p.age);
    writeln('----------------------');
  end;

  close(fichier);
end.
