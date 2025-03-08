program tri_insertion;
uses wincrt;
var
  T: array[1..7] of integer;
  i, j, tmp: integer;

begin
  for i:=1 to 7 do
	begin
	writeln('Donner le ',i, ' ieme element du Tableau');
	readln(T[i]);
	end;
 
  // Tri par insertion
  for i := 2 to 7 do
  begin
    j := i;
    while (j > 1) and (T[j] < T[j-1]) do
    begin
      // Échange des éléments
      tmp := T[j];
      T[j] := T[j-1];
      T[j-1] := tmp;
      j := j - 1;
    end;
  end;

  // Affichage du tableau trié
  for i := 1 to taille do
  begin
    write(T[i], ' ');
  end;
  writeln;
end.
