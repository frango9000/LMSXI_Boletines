for $x in doc("b37-B.xml")//libro
order by($x/titulo)
return ( $x/titulo , $x/autor )