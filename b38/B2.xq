for $x in doc("b.xml")//libro
order by($x/autores/autor[1]/nombre)
return $x/titulo