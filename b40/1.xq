<html>
<body>
<br/><h1>1)Mostrar la quiniela de la jornada.</h1>
<table border ="1">
<tr><th>Local</th><th>X</th><th>Visitante</th></tr>
{
  for $x in //partido
  return(
    <tr>
    <td>{$x/local}</td>
    <td>{data($x/@valor)}</td>
    <td>{$x/visitante}</td>
    </tr>
  )
}
</table>


<br/><h1>2)Visualizar número y equipos locales.</h1>
<ul>
{
  for $x in //partido
  return (
    <li>{data($x/@id)}, { $x/local}</li>
  )
}
</ul>
<br/><h1>3)Obtener equipos del pleno al 15.</h1>
<ul>
{
  for $x in //partido[@id=15]
  return(
    <li>{$x/local}</li>,
    <li>{data($x/@valor)}</li>,
    <li>{$x/visitante}</li>
  )
}
</ul>

<br/><h1>4)Mostrar el resultado del Celta.</h1>
<ul>
{
  for $x in //partido[local="Celta" or visitante="Celta"]
  return(
    <li>{$x/local}</li>,
    <li>{data($x/@valor)}</li>,
    <li>{$x/visitante}</li>
  )
}
</ul>

<br/><h1>5)Mostrar en una tabla los equipos que han ganado en casa.</h1>
<table border ="1">
<tr><th>Local</th><th>X</th><th>Visitante</th></tr>
{
  for $x in //partido[@valor = "1"]
  return(
    <tr>
    <td>{$x/local}</td>
    <td>{data($x/@valor)}</td>
    <td>{$x/visitante}</td>
    </tr>
  )
}
</table>


<br/><h1>6)Dado el siguiente XML  obtener equipo/puntos (si está en la quiniela) (ordenado por puntos). </h1>
<table border ="1">
<tr><th>Local</th><th>X</th><th>Visitante</th></tr>
{
  for $y in doc("b40b.xml")//puntos
  for $x in //partido[local = $y/@equipo or visitante = $y/@equipo]
  return(
    <tr>
    <td>{$x/local}</td>
    <td>{data($x/@valor)}</td>
    <td>{$x/visitante}</td>
    </tr>
  )
}
</table>

<br/><h1>7)El el partido con id=6 cambia el elemento  valor por 2.</h1>
{
  return (replace value of node //partido[@id=6]/@valor with 2, update:output(//partido/@valor))
}
<table border ="1">
<tr><th>Local</th><th>X</th><th>Visitante</th></tr>
{
  for $x in //partido[@id=6]
  return(
    <tr>
    <td>{$x/local}</td>
    <td>{data($x/@valor)}</td>
    <td>{$x/visitante}</td>
    </tr>
  )
}
</table>

</body>
</html>