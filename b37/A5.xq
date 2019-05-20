for $x in doc("b37-A.xml")//alumno
order by($x/@dni)
return $x/nombre