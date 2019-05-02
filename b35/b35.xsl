<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>1)</h1>
        <xsl:for-each select="//dia">
          <xsl:value-of select="numdia"/>
          <br/>
        </xsl:for-each>
        <h1>2)</h1>
        <xsl:for-each select="//dia[numdia&gt;2]/tarea">
          <xsl:value-of select="../numdia"/>
          <xsl:value-of select="nombre"/>
          <br/>
        </xsl:for-each>
        <h1>3)</h1>
        <ul>
          <xsl:for-each select="//dia">
            <li>Dia <xsl:value-of select="numdia"/> </li>
            <xsl:for-each select="tarea">
              <ul>
                <li>Tarea:</li>
                <ul>
                  <li>
                    <xsl:value-of select="nombre"/>
                  </li>
                  <li>
                    <xsl:value-of select="@prioridad"/>
                  </li>
                  <li>
                    <xsl:value-of select="hora-ini"/>
                  </li>
                  <li>
                    <xsl:value-of select="hora-fin"/>
                  </li>
                </ul>
              </ul>
            </xsl:for-each>
          </xsl:for-each>
        </ul>
        <h1>4)</h1>
        <table border="1">
          <tr>
            <th>Dia</th>
            <th>Nombre</th>
            <th>Prioridad</th>
            <th>H Inicio</th>
            <th>H fin</th>
          </tr>
          <xsl:for-each select="//dia">
            <xsl:sort select="numdia"/>
            <xsl:for-each select="tarea">
              <tr>
                <td>
                  <xsl:value-of select="../numdia"/>
                </td>
                <td>
                  <xsl:value-of select="nombre"/>
                </td>
                <td>
                  <xsl:value-of select="@prioridad"/>
                </td>
                <td>
                  <xsl:value-of select="hora-ini"/>
                </td>
                <td>
                  <xsl:value-of select="hora-fin"/>
                </td>
              </tr>
            </xsl:for-each>
          </xsl:for-each>
        </table>
        <h1>6)</h1>
        <table border="1">
          <xsl:for-each select="//tarea">
            <tr>
              <td>
                <xsl:value-of select="nombre"/>
              </td>
              <xsl:choose>
                <xsl:when test="hora-ini&lt;12">
                  <td>Mañana</td>
                </xsl:when>
                <xsl:when test="hora-ini&gt;15">
                  <td>Tarde</td>
                </xsl:when>
                <xsl:otherwise>
                  <td>Mediodia</td>
                </xsl:otherwise>
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
