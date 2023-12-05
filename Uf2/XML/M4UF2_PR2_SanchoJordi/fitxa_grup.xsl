<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/"> <!--comencem a treballar per l'arrel -->
    <div class="div_articles">
      <xsl:for-each select="grups/grup"> <!--amb al for-each fem com un bucle, com tenim més d'un grup, demanem que es repeteixi per tants grups com tinguem, si només en tenim un, en farà un-->
        <article class="article-info">
          <div class="content_article">
            <p class="particle"><b><xsl:value-of select="nom"/></b></p>
            <p class="pdate"><xsl:value-of select="@fecha"/></p>
            <p class="particle"><xsl:value-of select="informacio_general/descripcio"/></p>
            <p class="particle">
              Precio: <xsl:value-of select="informacio_general/preu"/> - Duración: <xsl:value-of select="informacio_general/dies"/>
            </p>
            <a href="{informacio_general/enllac}"><img class="img_article" src="{informacio_general/foto}"/></a>    
          </div>
        </article>
      </xsl:for-each>  
    </div>
  </xsl:template>
</xsl:stylesheet>
