for $x in doc("b.xml")//libro
return ($x/autores/autor[1]/nombre, $x/autores/autor[1]/apellido )
