<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <style>
.green{background-color:green;}
.cyan{background-color:cyan;}
.red{background-color:red;}
</style>
      </head>
      <body>
        <h1>1)</h1>
        <h2>Productos y Aulas</h2>
        <xsl:for-each select="//producto">
          <p>
            <spam style="color:blue">Producto: </spam>
            <xsl:value-of select="nombre"/>
            <br/>
            <spam style="color:blue">Aula: </spam>
            <xsl:value-of select="lugar/aula"/>
          </p>
        </xsl:for-each>
        <h1>2)</h1>
        <h2>Lista de Productos</h2>
        <ul>
          <xsl:for-each select="//producto">
            <li>Elemento <xsl:value-of select="@codigo"/></li>
            <ul>
              <li>Nombre: <xsl:value-of select="nombre"/></li>
              <li>Peso: <xsl:value-of select="peso"/> <xsl:value-of select="peso/@unidad"/></li>
            </ul>
          </xsl:for-each>
        </ul>
        <h1>3)</h1>
        <h2>Tabla de Productos ordenados por nombre</h2>
        <table border="1">
          <tr class="green">
            <th>Producto</th>
            <th>Edificio</th>
            <th>Aula</th>
            <th>Peso</th>
          </tr>
          <xsl:for-each select="//producto">
            <xsl:sort select="nombre"/>
            <tr class="cyan">
              <td>
                <xsl:value-of select="nombre"/>
              </td>
              <td>
                <xsl:value-of select="lugar/@edificio"/>
              </td>
              <td>
                <xsl:value-of select="lugar/aula"/>
              </td>
              <td>
                <xsl:value-of select="peso"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <h1>4)</h1>
        <h2>Tabla de Productos que se mostraran en rojo si peso en kg</h2>
        <table border="1">
          <tr class="red">
            <th>Producto</th>
            <th>Edificio</th>
            <th>Aula</th>
            <th>Peso</th>
          </tr>
          <xsl:for-each select="//producto">
            <tr>
              <td>
                <xsl:choose>
                  <xsl:when test="peso/@unidad='kg'">
                    <spam style="color:red">
                      <xsl:value-of select="nombre"/>
                    </spam>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="nombre"/>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
              <td>
                <xsl:value-of select="lugar/@edificio"/>
              </td>
              <td>
                <xsl:value-of select="lugar/aula"/>
              </td>
              <td>
                <xsl:value-of select="peso"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <br/>
        <b>El numero de productos es <xsl:value-of select="count(//producto)"/></b>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
