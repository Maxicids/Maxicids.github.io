<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:center">Университет</th>
      <th style="text-align:center">Проходной балл</th>
      <th style="text-align:center">План набора</th>
      <th style="text-align:center">Город</th>
    </tr>
    <xsl:for-each select="root/table/tr">
    <tr>
      <td><xsl:value-of select="university"/></td>
      <td><xsl:value-of select="minscore"/></td>
      <td><xsl:value-of select="dialplan"/></td>
      <td><xsl:value-of select="city"/></td>
    </tr>
    </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>