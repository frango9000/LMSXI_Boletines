for $y in doc("xml")//libro
where $y/editorial = "Addison-Wesley" and $y/@anho > 1992
return $y/titulo