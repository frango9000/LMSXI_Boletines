for $x in doc("b37-A.xml")//alumno
where ($x/nota > 5 and $x/nota < 9)
return ( $x/@dni, $x/nota )