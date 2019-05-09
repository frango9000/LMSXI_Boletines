for $x in doc("xml")//libro
return ($x/titulo, <numAutores>{count($x/autor)}</numAutores>)