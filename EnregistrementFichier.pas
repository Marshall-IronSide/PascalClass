program EnregistrerFichier;
type
  Personne = record
    nom: string[50];
    prenom: string[50];
    age: integer;
  end;

var
  fichier: file of Personne;
  p: Personne;
  i, nombrePersonnes: integer;

begin
  assign(fichier, 'personnes.dat');//nome le fichier personnes.
  rewrite(fichier);//cette intruction crée le fichier nomé fichier

  writeln('Combien de personnes voulez-vous enregistrer ?');
  readln(nombrePersonnes);

  for i := 1 to nombrePersonnes do
  begin
    writeln('Entrez le nom de la personne ', i, ' :');
    readln(p.nom);
    writeln('Entrez le prenom de la personne ', i, ' :');
    readln(p.prenom);
    writeln('Entrez l''age de la personne ', i, ' :');
    readln(p.age);

    write(fichier, p);
  end;

  close(fichier);
  writeln('Les informations ont été enregistrées dans le fichier personnes.dat');
end.
