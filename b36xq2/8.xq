for $y in distinct-values(doc("xml")//apellido)
order by($y)
return $y