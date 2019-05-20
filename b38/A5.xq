for $x in doc("a.xml")//libro
for $y in doc("a2.xml")//entrada
where $x/titulo = $y/titulo
return ($x/titulo, $y/comentario)