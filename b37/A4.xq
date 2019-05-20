for $x in doc("b37-A.xml")//alumno
order by($x/apells)
return ($x/nombre, $x/apells)