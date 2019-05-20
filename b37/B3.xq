for $x in doc("b37-B.xml")//libro
order by($x/titulo)
where $x/precio > 20
return ( $x/titulo )