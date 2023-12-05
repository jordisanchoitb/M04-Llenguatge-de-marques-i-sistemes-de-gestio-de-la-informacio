<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="id" />
    <xsl:template match="/">
        <article class="article">
            <xsl:for-each select="grups/grup[@id = $id]">
                <div class="divsuperior_article">
                    <div class="div_h1">
                        <h1 class="h1article"><xsl:value-of select="nom"/>-<xsl:value-of select="@fecha"/></h1>
                    </div>
                    <div class="infodivsuperior">
                        <img class="img-content-grups" src="{concat('../',informacio_general/foto)}"/>
                        <div class="div_infoandh2Superior">
                            <div class="div_h2Superior">
                                <div class="div_h2_upSuperior">
                                    <h2>Grupo minimo:</h2> <div class="infoxml_Superior"><xsl:value-of select="informacio_general/grupMin"/></div>
                                </div>
                                <div class="div_h2_downSuperior">
                                    <h2>Precio:</h2> <div class="infoxml_Superior"><xsl:value-of select="informacio_general/preu"/></div> 
                                    <h2 class="h2_downSuperior2">Duracion:</h2> <div class="infoxml_Superior"><xsl:value-of select="informacio_general/dies"/></div>
                                </div>
                            </div>
                            <div class="div_info_Inferior">
                                <h3>El viaje Incluye:</h3>
                                <xsl:for-each select="inclos/inclou">
                                    <p class="pinfo_Superior"><xsl:value-of select="."/></p>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="divitinerario">
                    <h2 class="h2initerario">Itinerario:</h2>
                    <div>
                        <xsl:for-each select="itinerari/dia">
                            <p class="piniterario"><xsl:value-of select="."/></p>
                        </xsl:for-each>
                        <p class="pnota"><strong>NOTA:</strong> el orden de las excursiones podrá ser modificado sin afectar a su contenido.</p>
                    </div>
                </div> 
            </xsl:for-each> 
        </article>
    </xsl:template>
</xsl:stylesheet>