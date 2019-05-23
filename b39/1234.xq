<html>
<body>
<h1>1)</h1>
<ul>
{
  for $x in //libro
  order by $x/titulo
  return <li>{$x/titulo/text()}</li>
}
</ul><br/>

<h1>2)</h1>
<table style="background-color:pink;" border="1">
{
for $x in //libro
return <tr><td>{$x/titulo}</td></tr>
}
</table><br/>

<h1>3)</h1>
<table style="background-color:pink;" border="1">
{
for $x in //libro
return <tr><td>{$x/titulo}</td><td>{$x/precio}</td></tr>
}
</table><br/>

<h1>4)</h1>
<table border="1">
<tr><td>Titulo</td><td>Precio (€)</td><td>Precio con descuento (€)</td></tr>
{
for $x in //libro
order by $x/titulo
return <tr><td>{$x/titulo}</td><td>{$x/precio/text()}</td>
<td>{$x/precio * 0.9}</td>
</tr>
}
</table><br/>
</body>
</html>