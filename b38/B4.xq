for $x in doc("b.xml")//libro
return ($x/titulo, count($x/autores/autor) )
