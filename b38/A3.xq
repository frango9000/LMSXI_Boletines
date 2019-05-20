for $x in //libro
where count($x/autor) > 2
return $x/titulo