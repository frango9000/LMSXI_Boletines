for $x in doc("b.xml")//libro
order by ($x/titulo)
return $x/titulo