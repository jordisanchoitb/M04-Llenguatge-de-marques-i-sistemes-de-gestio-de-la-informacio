<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/"> <!--comencem a treballar per l'arrel, minerals-->
        <html>
            <head>
                <meta charset="utf-8" />
                <link rel="stylesheet" href="minerals.css" />
                <title>Minerals</title>
            </head>
            <body>
                <header>
                    <h1>MINERALS</h1>
                </header>
                <article>
                    <xsl:for-each select="minerals/mineral">
                        <div class="mineral">
                            <p class="pmineral"><b><xsl:value-of select="nom"/></b></p>
                            <p class="pmineral"><b>ID: </b> <xsl:value-of select="@Id"/></p>
                            <p class="pmineral"><b>NOM: </b> <xsl:value-of select="nom"/></p>
                            <p class="pmineral"><b>COMPOSICIO: </b> <xsl:value-of select="composicio"/></p>
                            <p class="pmineral"><b>GRUP: </b>  <xsl:value-of select="grup"/></p>
                        </div>
                        <table>
                            <tr>
                                <td ><b>Densitat:</b> <xsl:value-of select="densitat"/></td>
                                <td class="tdimg" rowspan="5"><img src="{concat('img/',foto)}"/></td>
                            </tr>
                            <tr>
                                <td ><b>Duresa:</b> <xsl:value-of select="duressa"/></td>
                            </tr>
                            <tr>
                                <td ><b>Exfoliacio:</b> <xsl:value-of select="exfoliacio"/></td>
                            </tr>
                            <tr>
                                <td ><b>Color:</b> <xsl:value-of select="color"/> Ratlla: <xsl:value-of select="ratlla"/></td>
                            </tr>
                            <tr>
                                <td><b>Lluissor:</b> <xsl:value-of select="lluissor"/></td>
                            </tr>
                        </table>
                    </xsl:for-each> 
                </article>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>