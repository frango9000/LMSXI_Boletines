for $y in doc("b2.xml")//vendidos/codigo
for $x in doc("b.xml")//libro
where $x/@codigo = $y
return $x/titulo
