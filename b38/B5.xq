for $x in doc("b.xml")//libro
return 
if ( count($x/autores/autor) = 1 )
then <unAutor>{$x/titulo}</unAutor>
else <variosAutores>{$x/titulo}</variosAutores>
