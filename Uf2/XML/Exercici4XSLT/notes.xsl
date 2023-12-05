<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html> 
            <body>
                <h2 style="font-size: xx-large; padding: 0.5rem" colspan="4">M04-Notas</h2>
                <table style="text-align: center" border="1px">
                    <tr style="background-color: #8ADB3C">
                        <th style="text-align: center; padding: 0.5rem">Nombre</th>
                        <th style="text-align: center; padding: 0.5rem">Apellidos</th>
                        <th style="text-align: center; padding: 0.5rem">Telefono</th>
                        <th style="text-align: center; padding: 0.5rem">Repetidor</th>
                        <th style="text-align: center; padding: 0.5rem">Nota Practica</th>
                        <th style="text-align: center; padding: 0.5rem">Nota Examen</th>
                        <th style="text-align: center; padding: 0.5rem">Nota Total</th>
                    </tr>
                    <xsl:for-each select="evaluacion/alumno">
                        <xsl:sort select="apellidos"/>
                        <tr>
                            <td style="padding: 0.5rem"><xsl:value-of select="nombre"/></td>
                            <td style="padding: 0.5rem"><xsl:value-of select="apellidos"/></td>
                            <td style="padding: 0.5rem"><xsl:value-of select="telefono"/></td>
                            <td style="padding: 0.5rem"><xsl:value-of select="@repite"/></td>
                            <td style="padding: 0.5rem"><xsl:value-of select="practicas"/></td>
                            <td style="padding: 0.5rem"><xsl:value-of select="examen"/></td>
                            <xsl:variable name="nota_media" select="(practicas + examen) div 2"/>
                            <xsl:choose>
                                <xsl:when test="$nota_media &gt; 4">
                                    <td bgcolor="green"><xsl:value-of select="$nota_media"/></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td bgcolor="red"><xsl:value-of select="$nota_media"/></td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>