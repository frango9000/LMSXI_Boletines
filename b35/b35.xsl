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
        <xsl:for-each select="//dia[numdia>2]">
        <xsl:value-of select="numdia"/> <xsl:value-of select="tarea/nombre"/><br/>
        </xsl:for-each>
        
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
