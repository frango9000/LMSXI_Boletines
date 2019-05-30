<html>
<body>
Numero de Modulos: {count(//modulo)}<br/>
<table border ="1" >
<tr><th>Nombre</th><th>Codigo</th></tr>
{
for $x in //modulo
return <tr><td>{$x/nombre}</td><td>{data($x/@id)}</td></tr>
}
</table>
</body>
</html>