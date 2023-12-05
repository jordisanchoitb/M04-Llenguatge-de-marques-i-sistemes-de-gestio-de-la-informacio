<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html> 
            <body>
                <h2></h2>
                <table style="text-align: center" border="1px">
                    <tr>
                        <th style="font-size: xx-large; padding: 0.5rem" colspan="4">Mis predicciones</th>
                    </tr>
                    <tr>
                        <td style="text-align: center; padding: 0.5rem">Fecha</td>
                        <td style="text-align: center; padding: 0.5rem">Maxima</td>
                        <td style="text-align: center; padding: 0.5rem">Minima</td>
                        <td style="text-align: center; padding: 0.5rem">Prediccion</td>
                    </tr>
                    <xsl:for-each select="root/prediccion/dia">
                    <tr>
                        <td style="padding: 0.5rem"><xsl:value-of select="@fecha"/></td>
                        <td style="padding: 0.5rem"><xsl:value-of select="temperatura/maxima"/></td>
                        <td style="padding: 0.5rem"><xsl:value-of select="temperatura/minima"/></td>
                        <td style="padding: 0.5rem"><img src="{concat('img/',estado_cielo[@periodo='00-12']/@descripcion)}.png"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
