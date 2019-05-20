<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes" encoding="UTF-8"/>

  <xsl:variable name="lang">enUS</xsl:variable>
  <xsl:variable name="lang-file">sic-ceramic-coating-calc_lang.xml</xsl:variable>
  <xsl:variable name="flag">0</xsl:variable>

  <xsl:include href="http://matdata.shu.edu.cn/XSLTransform/basic.xsl"/>

  <xsl:template match="/SIC-ceramic-coating-calc">
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
          <xsl:apply-templates select="structure" mode="key"/>
        </h2>
        <div>
          <xsl:apply-templates select="structure/crystal-structure" mode="keyvalue"/>
          <xsl:for-each select="structure/lattice-parameter/child::*">
            <xsl:apply-templates select="." mode="keyvalue-2"/>
          </xsl:for-each>
          <div>
            <div class="my-quarter my-label">
              <xsl:apply-templates select="structure/bond-lengths" mode="key"/>
            </div>
            <div class="my-quarter my-value">
              <xsl:apply-templates select="structure/bond-lengths" mode="table"/>
            </div>
            <div class="my-quarter my-label">
              <xsl:apply-templates select="structure/bond-angles" mode="key"/>
            </div>
            <div class="my-quarter my-value">
              <xsl:apply-templates select="structure/bond-angles" mode="table"/>
            </div>
          </div>
          <xsl:for-each select="structure/child::*[position()&gt;4]">
            <xsl:apply-templates select="." mode="keyvalue"/>
          </xsl:for-each>
        </div>
        <h2>
          <xsl:apply-templates select="elastic-constants" mode="key"/>
        </h2>
        <div>
          <div class="my-quarter my-label"></div>
          <div class="my-half my-value">
            <xsl:apply-templates select="elastic-constants" mode="table"/>
          </div>
        </div>
        <h2>
          <xsl:apply-templates select="mechanical-properties" mode="key"/>
        </h2>
        <div>
          <xsl:for-each select="mechanical-properties/child::*[position()&lt;7]">
            <xsl:apply-templates select="." mode="keyvalue"/>
          </xsl:for-each>
          <xsl:for-each select="mechanical-properties/child::*[position()&gt;6]">
            <xsl:for-each select="child::*">
              <xsl:apply-templates select="." mode="keyvalue-2"/>
            </xsl:for-each>
          </xsl:for-each>
        </div>
        <h2>
          <xsl:apply-templates select="structural-stability" mode="key"/>
        </h2>
        <div>
          <xsl:for-each select="structural-stability/child::*">
            <div class="my-quarter my-label">
              <xsl:apply-templates select="table" mode="key-2"/>
            </div>
            <div class="my-quarter my-value">
              <xsl:apply-templates select="table" mode="table"/>
            </div>
            <xsl:apply-templates select="attachment" mode="keyvalue-2"/>
          </xsl:for-each>
        </div>
        <h2>
          <xsl:apply-templates select="elastic-stiffness-at-high-pressures" mode="key"/>
        </h2>
        <div>
          <xsl:for-each select="elastic-stiffness-at-high-pressures/child::*">
            <div>
              <div class="my-quarter my-label">
                <xsl:apply-templates select="table" mode="key-2"/>
              </div>
              <div class="my-half my-value">
                <xsl:apply-templates select="table" mode="table"/>
              </div>
            </div>
            <xsl:apply-templates select="attachment" mode="keyvalue-2"/>
          </xsl:for-each>
        </div>
        <h2>
          <xsl:apply-templates select="mechanical-properties-at-high-pressures" mode="key"/>
        </h2>
        <div>
          <xsl:for-each select="mechanical-properties-at-high-pressures/child::*">
            <div>
              <div class="my-quarter my-label">
                <xsl:apply-templates select="table" mode="key-2"/>
              </div>
              <div class="my-half my-value">
                <xsl:apply-templates select="table" mode="table"/>
              </div>
            </div>
            <xsl:apply-templates select="attachment" mode="keyvalue-2"/>
          </xsl:for-each>
        </div>
        <h2>
          <xsl:apply-templates select="thermal-properties" mode="key"/>
        </h2>
        <div>
          <xsl:for-each select="thermal-properties/child::*">
            <xsl:apply-templates select="." mode="keyvalue"/>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>