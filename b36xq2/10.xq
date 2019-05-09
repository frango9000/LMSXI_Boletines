for $x in doc("xml")//libro
return <libro>{$x/titulo, <numAutores>{count($x/autor)}</numAutores>}</libro>