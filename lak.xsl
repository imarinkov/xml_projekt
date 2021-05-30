<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ivan Marinković</title>
            </head>
            <body>
                <div>
                    <h1>LOS ANGELES LAKERS</h1>
                    <h2>2020/21 stats</h2>
                </div>
                
                <table border="1">
                    <tr bgcolor="#ffd000">
                        <th style="text-align:left">Name</th>
                        <th style="text-align:left">Position</th>
                        <th style="text-align:left">PPG</th>
                        <th style="text-align:left">APG</th>
                        <th style="text-align:left">RPG</th>
                    </tr>
                    <xsl:for-each select="Team/Player">
                        <tr>
                            <td>
                                <xsl:value-of select="Name"/>
                            </td>
                            <td>
                                <xsl:value-of select="Position"/>
                            </td>
                            <td>
                                <xsl:value-of select="PPG"/>
                            </td>
                            <td>
                                <xsl:value-of select="APG"/>
                            </td>
                            <td>
                                <xsl:value-of select="RPG"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>