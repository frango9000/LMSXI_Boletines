<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
<body>
<h1>Ejercicio 1</h1>
<table border="1" style="border-collapse:collapse;">
<tr><td>Nombre</td><td>Mercado</td><td>Preci0</td></tr>
<xsl:for-each select="//cotizacion">
<tr>
<td><xsl:value-of select="nombre"/></td>
<td><xsl:value-of select="mercado"/></td>
<td><xsl:value-of select="precio"/></td>
</tr>
</xsl:for-each>
</table>
<p>El precio total es: <xsl:value-of select="sum(//precio)"/></p>
<br/>
<h1>Ejercicio 2</h1>
<table border="1" style="border-collapse:collapse;">
<tr><th>Nombre</th><th>Mercado</th><th>Preci0</th><th>Fecha</th></tr>
<xsl:for-each select="//cotizacion">
<tr>
<td><xsl:value-of select="nombre"/></td>
<xsl:choose>
<xsl:when test="precio>12">
<td style="color:red;border-color:black;"><xsl:value-of select="mercado"/></td>
</xsl:when>
<xsl:otherwise>
<td style="color:black;border-color:black;"><xsl:value-of select="mercado"/></td>
</xsl:otherwise>
</xsl:choose>
<td><xsl:value-of select="precio"/></td>
<td><xsl:value-of select="fecha/dia"/>/<xsl:value-of select="fecha/mes"/>/<xsl:value-of select="fecha/anio"/></td>
</tr>
</xsl:for-each>
</table>
<p>La media de los precios es =  <xsl:value-of select="ceiling(sum(//precio) div(count(//precio)))"/></p>
<br/>
<h1>Ejercicio 3</h1>
<table style="border:solid 1px white;background-color:grey;border-collapse:collapse;" width="200" height="200">
<tr><th style="border:solid white 1px">Nombre</th><th style="border:solid white 1px">Codigo</th></tr>
<xsl:for-each select="//cotizacion">
<tr>
<td align="center" style="border:solid white 1px"><xsl:value-of select="nombre"/></td>
<td align="center" style="border:solid white 1px"><xsl:value-of select="@cnae"/></td>
</tr>
</xsl:for-each>
</table>

<h1>Ejercicio 4</h1>
<ul>
<xsl:for-each select="//cotizacion">
<li><xsl:value-of select="nombre"/></li>
<li><xsl:value-of select="mercado"/></li>
<li><xsl:value-of select="precio"/></li>
<li>Fecha</li>
<ul type="disc">
<li><xsl:value-of select="fecha/dia"/></li>
<li><xsl:value-of select="fecha/mes"/></li>
<li><xsl:value-of select="fecha/anio"/></li>
</ul>
</xsl:for-each>
</ul>
</body>  
  </html>
  </xsl:template>
</xsl:stylesheet>
