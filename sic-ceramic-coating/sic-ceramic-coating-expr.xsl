<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" encoding="UTF-8"/>

  <xsl:variable name="lang">enUS</xsl:variable>
  <xsl:variable name="lang-file">sic-ceramic-coating-expr_lang.xml</xsl:variable>
  <xsl:variable name="flag">0</xsl:variable>

  <xsl:include href="http://matdata.shu.edu.cn/XSLTransform/basic.xsl"/>

  <xsl:template match="/SIC-ceramic-coating-expr">
    <html>
      <head>
        <xsl:apply-templates select="." mode="link"/>
      </head>
      <body>
        <h2>
          <xsl:apply-templates select="information" mode="key"/>
        </h2>
        <div>
          <xsl:for-each select="information/child::*">
            <xsl:apply-templates select="." mode="keyvalue"/>
          </xsl:for-each>
        </div>
        <h2>
          <xsl:apply-templates select="raw-material" mode="key"/>
        </h2>
        <div>
          <xsl:for-each select="raw-material/child::*[position()&lt;3]">
            <xsl:apply-templates select="." mode="keyvalue"/>
          </xsl:for-each>
          <xsl:for-each select="raw-material/child::*[position()&gt;2 and position()&lt;6]">
            <div class="my-quarter my-label">
              <xsl:apply-templates select="table" mode="key-2"/>
            </div>
            <div class="my-quarter my-value">
              <xsl:apply-templates select="table" mode="table"/>
            </div>
            <xsl:apply-templates select="attachment" mode="keyvalue-2"/>
          </xsl:for-each>
          <xsl:for-each select="raw-material/child::*[position()&gt;5]">
            <xsl:apply-templates select="." mode="keyvalue"/>
          </xsl:for-each>
        </div>
        <h2>
          <xsl:apply-templates select="coating-preparation" mode="key"/>
        </h2>
        <div>
          <xsl:for-each select="coating-preparation/child::*">
            <xsl:apply-templates select="." mode="keyvalue"/>
          </xsl:for-each>
        </div>
        <h2>
          <xsl:apply-templates select="micro-structures" mode="key"/>
        </h2>
        <div>
          <xsl:for-each select="micro-structures/child::*[position()&lt;3]">
            <div class="my-quarter my-label">
              <xsl:apply-templates select="table" mode="key-2"/>
            </div>
            <div class="my-quarter my-value">
              <xsl:apply-templates select="table" mode="table"/>
            </div>
            <xsl:apply-templates select="attachment" mode="keyvalue-2"/>
          </xsl:for-each>
          <xsl:for-each select="micro-structures/child::*[position()&gt;2 and position()&lt;9]">
            <xsl:apply-templates select="." mode="keyvalue"/>
          </xsl:for-each>
          <xsl:for-each select="micro-structures/child::*[position()=9]">
            <div class="my-quarter my-label">
              <xsl:apply-templates select="table" mode="key-2"/>
            </div>
            <div class="my-quarter my-value">
              <xsl:apply-templates select="table" mode="table"/>
            </div>
            <xsl:apply-templates select="attachment" mode="keyvalue-2"/>
          </xsl:for-each>
          <xsl:for-each select="micro-structures/child::*[position()&gt;9 and position()&lt;14]">
            <xsl:apply-templates select="." mode="keyvalue"/>
          </xsl:for-each>
          <xsl:for-each select="micro-structures/child::*[position()=14]">
            <div class="my-quarter my-label">
              <xsl:apply-templates select="tilt-angle-table" mode="key-2"/>
            </div>
            <div class="my-quarter my-value">
              <xsl:apply-templates select="tilt-angle-table" mode="table"/>
            </div>
            <div class="my-quarter my-label">
              <xsl:apply-templates select="length-table" mode="key-2"/>
            </div>
            <div class="my-quarter my-value">
              <xsl:apply-templates select="length-table" mode="table"/>
            </div>
            <xsl:apply-templates select="attachment" mode="keyvalue-2"/>
          </xsl:for-each>
          <xsl:for-each select="micro-structures/child::*[position()&gt;14 and position()&lt;18]">
            <xsl:apply-templates select="." mode="keyvalue"/>
          </xsl:for-each>
          <xsl:for-each select="micro-structures/child::*[position()&gt;17 and position()&lt;20]">
            <div class="my-quarter my-label">
              <xsl:apply-templates select="table" mode="key-2"/>
            </div>
            <div class="my-quarter my-value">
              <xsl:apply-templates select="table" mode="table"/>
            </div>
            <xsl:apply-templates select="attachment" mode="keyvalue-2"/>
          </xsl:for-each>
          <xsl:for-each select="micro-structures/child::*[position()&gt;19]">
            <xsl:apply-templates select="." mode="keyvalue"/>
          </xsl:for-each>
        </div>
        <h2>
          <xsl:apply-templates select="performance" mode="key"/>
        </h2>
        <div>
          <div>
            <div class="my-quarter my-label">
              <xsl:apply-templates select="performance/phase-stability" mode="key"/>
            </div>
            <div class="my-half my-value">
              <xsl:apply-templates select="performance/phase-stability" mode="table"/>
            </div>
          </div>
          <xsl:apply-templates select="performance/thermal-stability-of-coatings" mode="keyvalue"/>
          <xsl:for-each select="performance/heat-insulation/child::*">
            <div class="my-quarter my-label">
              <xsl:apply-templates select="." mode="key-2"/>
            </div>
            <div class="my-quarter my-value">
              <xsl:apply-templates select="." mode="table"/>
            </div>
          </xsl:for-each>
          <div>
            <div class="my-quarter my-label">
              <xsl:apply-templates select="performance/thermal-expansion" mode="key"/>
            </div>
            <div class="my-half my-value">
              <xsl:apply-templates select="performance/thermal-expansion" mode="table"/>
            </div>
          </div>
          <div>
            <div class="my-quarter my-label">
              <xsl:apply-templates select="performance/corrosion-resistance" mode="key"/>
            </div>
            <div class="my-half my-value">
              <xsl:apply-templates select="performance/corrosion-resistance" mode="table"/>
            </div>
          </div>
          <div>
            <div class="my-quarter my-label">
              <xsl:apply-templates select="performance/corrosion-resistance-in-water-vapor" mode="key"/>
            </div>
            <div class="my-half my-value">
              <xsl:apply-templates select="performance/corrosion-resistance-in-water-vapor" mode="table"/>
            </div>
          </div>
          <xsl:for-each select="performance/mechanical-property/child::*">
            <xsl:apply-templates select="." mode="keyvalue-2"/>
          </xsl:for-each>
          <xsl:for-each select="performance/abrasion-resistance/child::*">
            <div class="my-quarter my-label">
              <xsl:apply-templates select="." mode="key-2"/>
            </div>
            <div class="my-quarter my-value">
              <xsl:apply-templates select="." mode="table"/>
            </div>
          </xsl:for-each>
          <xsl:for-each select="performance/ablation-resistance/child::*">
            <div>
              <div class="my-quarter my-label">
                <xsl:apply-templates select="." mode="key-2"/>
              </div>
              <div class="my-half my-value">
                <xsl:apply-templates select="." mode="table"/>
              </div>
            </div>
          </xsl:for-each>
          <xsl:for-each select="performance/ablation-resistance/child::*">
            <div>
              <div class="my-quarter my-label">
                <xsl:apply-templates select="." mode="key-2"/>
              </div>
              <div class="my-half my-value">
                <xsl:apply-templates select="." mode="table"/>
              </div>
            </div>
          </xsl:for-each>
          <div>
            <div class="my-quarter my-label">
              <xsl:apply-templates select="performance/oxidation-resistance" mode="key"/>
            </div>
            <div class="my-half my-value">
              <xsl:apply-templates select="performance/oxidation-resistance" mode="table"/>
            </div>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>