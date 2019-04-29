<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
<body>

<h1>1)</h1>
<xsl:for-each select="//dia">
<xsl:value-of select="numdia"/>

</xsl:for-each>


</body>  
  </html>
  </xsl:template>
</xsl:stylesheet>
