for $x in doc("b.xml")//libro
where  $x/autores/autor/nombre = "Axel" 
return $x/titulo
