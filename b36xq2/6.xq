for $y in doc("xml")//libro
where count($y/autor)>1
return ( $y/@anho, $y/titulo )