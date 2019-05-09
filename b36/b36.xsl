<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>A)</h1>
        <h2>Mi Biblioteca</h2>
        <xsl:for-each select="//libro">
          <b>Titulo:</b>
          <xsl:value-of select="titulo"/>
          <br/>
          <b>Autor:</b>
          <xsl:value-of select="autor"/>
          <br/>
          <br/>
        </xsl:for-each>
        <h1>B)</h1>
        <h2>Mi Biblioteca</h2>
        <xsl:for-each select="//libro">
          <xsl:sort select="titulo"/>
          <b>Titulo:</b>
          <xsl:value-of select="titulo"/>
          <br/>
          <b>Autor:</b>
          <xsl:value-of select="autor"/>
          <br/>
          <br/>
        </xsl:for-each>
        <h1>C)</h1>
        <h2>Mi Biblioteca</h2>
        <xsl:for-each select="//libro[precio &gt;30]">
          <xsl:sort select="titulo"/>
          <b>Titulo:</b>
          <xsl:value-of select="titulo"/>
          <br/>
          <b>Autor:</b>
          <xsl:value-of select="autor"/>
          <br/>
          <b>Precio:</b>
          <xsl:value-of select="precio"/>
          <br/>
          <br/>
        </xsl:for-each>
        <h1>D)</h1>
        <select>
          <xsl:for-each select="//titulo">
            <option>
              <xsl:value-of select="../titulo"/>
            </option>
          </xsl:for-each>
        </select>
        <h1>E)</h1>
        <h2>Mi Biblioteca</h2>
        <xsl:for-each select="//libro[@leng='español']">
          <xsl:sort select="titulo"/>
          <b>Titulo:</b>
          <xsl:value-of select="titulo"/>
          <br/>
          <b>Autor:</b>
          <xsl:value-of select="autor"/>
          <br/>
          <br/>
        </xsl:for-each>
        <h1>F)</h1>
        <h2>Mi Biblioteca</h2>
        <table border="1">
          <tr style="background-color:cyan;">
            <th>Titulo</th>
            <th>Isbn</th>
          </tr>
          <xsl:for-each select="//libro">
            <tr>
              <td>
                <xsl:value-of select="titulo"/>
              </td>
              <td>
                <xsl:value-of select="isbn"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <h1>G)</h1>
        <h2>Mi Biblioteca</h2>
        <table border="1">
          <tr style="background-color:cyan;">
            <th>Titulo</th>
            <th>Autor</th>
            <th>Isbn</th>
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
        <p><b>El numero de libros es</b> = <xsl:value-of select="count(//libro)"/></p>
        <h1>H)</h1>
        <h2>Mi Biblioteca</h2>
        <table border="1">
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
              <xsl:choose>
                <xsl:when test="precio&gt;30">
                  <td style="background-color:red">
                    <xsl:value-of select="precio"/>
                  </td>
                </xsl:when>
                <xsl:otherwise>
                  <td>
                    <xsl:value-of select="precio"/>
                  </td>
                </xsl:otherwise>
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
        <p><b>La media de los precios</b> = <xsl:value-of select="sum(//precio) div(count(//libro))"/></p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
