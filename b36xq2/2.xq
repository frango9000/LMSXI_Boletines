for $y in doc("xml")//libro
order by $y/@anho
(:return concat( $y/titulo," ", $y/@anho) :)
(:return <libro>{data($y/@anho), $y/titulo}</libro>:)
return ($y/titulo, $y/@anho )