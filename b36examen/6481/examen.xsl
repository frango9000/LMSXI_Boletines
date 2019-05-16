<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
  </head>
      <body>
        <h1>A)</h1>
        <xsl:for-each select="//empresa">
          <p>
            <b>Nombre:</b>
            <xsl:value-of select="nombre"/>
            <br/>
            <b>Indice:</b>
            <xsl:value-of select="@indice"/>
          </p>
        </xsl:for-each>
        <h1>B)</h1>
        <xsl:for-each select="//empresa">
          <xsl:sort select="precio"/>
          <p>
            <b>Nombre:</b>
            <xsl:value-of select="nombre"/>
            <br/>
            <b>Precio:</b>
            <xsl:value-of select="precio"/>
          </p>
        </xsl:for-each>
        <h1>C)</h1>
        <xsl:for-each select="//empresa">
          <p>
            <b>Simbolo:</b>
            <xsl:value-of select="simbolo"/>
            <br/>
            <xsl:choose>
              <xsl:when test="precio &gt; 75">
                <b>Precio:</b>
                <spam style="color:red;">
                  <xsl:value-of select="precio"/>
                </spam>
              </xsl:when>
              <xsl:when test="precio &lt; 25">
                <b>Precio:</b>
                <spam style="color:blue;">
                  <xsl:value-of select="precio"/>
                </spam>
              </xsl:when>
              <xsl:otherwise>
                <b>Precio:</b>
                <xsl:value-of select="precio"/>
              </xsl:otherwise>
            </xsl:choose>
          </p>
        </xsl:for-each>
        <h1>D)</h1>
        <table style="border:solid 1px black" border="1">
          <tr>
            <th>Nombre</th>
            <th>Simbolo</th>
          </tr>
          <xsl:for-each select="//empresa">
            <tr>
              <td>
                <xsl:if test="@indice ='general'">**</xsl:if>
                <xsl:value-of select="nombre"/>
              </td>
              <td>
                <xsl:value-of select="simbolo"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <p>
          <b>**Empresa pertenece al indice general</b>
        </p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
