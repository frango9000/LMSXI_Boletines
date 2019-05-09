for $y in doc("xml")//libro
where $y/@anho < 2000
return $y/titulo 