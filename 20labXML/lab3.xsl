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
      <th style="text-align:center">Год рождения</th>
    </tr>
    <xsl:for-each select="root/students/student">
           <xsl:sort select="date"/>
      <tr>
      
        <xsl:choose>
            <xsl:when test = "score >= 6"> 
                    <td bgcolor="green"><xsl:value-of select="name"/></td>
                    <td><xsl:value-of select="surname"/></td>
                    <td><xsl:value-of select="score"/></td>
                    <td><xsl:value-of select="date"/></td>
            </xsl:when>
            <xsl:otherwise> 
                    <td bgcolor="red"><xsl:value-of select="name"/></td>
                    <td><xsl:value-of select="surname"/></td>
                    <td><xsl:value-of select="score"/></td>
                    <td><xsl:value-of select="date"/></td>
            </xsl:otherwise>
        </xsl:choose> 
 
      </tr>
    </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>