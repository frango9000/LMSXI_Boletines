for $x in doc("b37-A.xml")//alumno
where ($x/nota > 4)
return $x/nombre