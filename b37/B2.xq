for $x in doc("b37-B.xml")//libro
where $x/precio < 20
return $x/titulo