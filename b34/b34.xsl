<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>1)</h1>
        <h3>Mis Libros</h3>
        <xsl:for-each select="//libro">
          <p>
            <b>Titulo: </b>
            <xsl:value-of select="titulo"/>
            <br/>
            <b>Autor: </b>
            <xsl:value-of select="autor"/>
          </p>
        </xsl:for-each>
        <h1>2)</h1>
        <h3>Mis Libros</h3>
        <p>
El numero de libros es <xsl:value-of select="count(//libro)"/>
        </p>
        <h1>3)</h1>
        <xsl:for-each select="//libro">
          <xsl:sort select="titulo"/>
          <xsl:value-of select="titulo"/>
          <br/>
        </xsl:for-each>
        <h1>4)</h1>
        <table border="1" style="border-collapse:collapse;">
          <tr>
            <th>Titulo</th>
            <th>Autor</th>
            <th>ISBN</th>
            <th>Precio</th>
          </tr>
          <xsl:for-each select="//libro">
            <tr>
              <td>
                <xsl:value-of select="titulo"/>
              </td>
              <td>
                <xsl:value-of select="autor"/>
              </td>
              <td>
                <xsl:value-of select="isbn"/>
              </td>
              <td>
                <xsl:value-of select="precio"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <h1>5)</h1>
        <h3>Libros de mas de 30€</h3>
        <xsl:for-each select="//libro">
          <xsl:if test="precio&gt;30">
            <xsl:value-of select="titulo"/>
            <br/>
          </xsl:if>
        </xsl:for-each>
        <h1>6)</h1>
        <h3>Combo de titulos</h3>
        <select>
          <xsl:for-each select="//libro">
            <option>
              <xsl:value-of select="titulo"/>
            </option>
          </xsl:for-each>
        </select>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
