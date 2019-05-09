for $y in doc("xml")//libro
where ($y/precio=65.95)
return $y/titulo/text()