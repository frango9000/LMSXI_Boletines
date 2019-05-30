<html>
<head></head>
<body>
<b>Listado Modulos</b>
<ol>
{
for $x in //modulo
return <li>{$x/nombre} ({data($x/@id)})</li>
}
</ol>
</body>
</html>