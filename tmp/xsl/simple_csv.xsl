<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>
  <xsl:template match="/">
  	<xsl:text>"Title","Genre","Year","Status","Developer","Publisher","</xsl:text>
	<xsl:value-of select="/document/export/custom1"/><xsl:text>","</xsl:text>
	<xsl:value-of select="/document/export/custom2"/><xsl:text>","</xsl:text>
	<xsl:value-of select="/document/export/custom3"/><xsl:text>","</xsl:text>
	<xsl:value-of select="/document/export/custom4"/><xsl:text>","</xsl:text>
	<xsl:value-of select="/document/export/custom5"/><xsl:text>","</xsl:text>
	<xsl:value-of select="/document/export/custom6"/><xsl:text>","</xsl:text>
	<xsl:value-of select="/document/export/custom7"/><xsl:text>","</xsl:text>
	<xsl:value-of select="/document/export/custom8"/><xsl:text>","</xsl:text>
	<xsl:value-of select="/document/export/custom9"/><xsl:text>","</xsl:text>
	<xsl:value-of select="/document/export/custom10"/><xsl:text>","</xsl:text>
	<xsl:value-of select="/document/export/custom11"/><xsl:text>","</xsl:text>
	<xsl:value-of select="/document/export/custom12"/><xsl:text>","</xsl:text>
	<xsl:value-of select="/document/export/custom13"/><xsl:text>","</xsl:text>
	<xsl:value-of select="/document/export/custom14"/><xsl:text>","</xsl:text>
	<xsl:text>Link1","Link2","Link3","Link4","Link5","Link6","Link7","Link8","Link1Title","Link2Title","Link3Title","Link4Title","Link5Title","Link6Title","Link7Title","Link8Title","Favorite","Captures","ConfigFile","Setup","SetupParameters","AltExe1","AltExe1Parameters","AltExe2","AltExe2Parameters","Dosbox","DosboxVersion"</xsl:text>
  	<xsl:text>&#10;</xsl:text>
    <xsl:for-each select="document/profile">
      <xsl:sort select="title"/>
      	<xsl:text>"</xsl:text>
      	<xsl:value-of select="title"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/genre"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/year"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/status"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/developer"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/publisher"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom1"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom2"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom3"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom4"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom5"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom6"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom7"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom8"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom9"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom10"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom11"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom12"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom13"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/custom14"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link1/raw"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link2/raw"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link3/raw"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link4/raw"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link5/raw"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link6/raw"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link7/raw"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link8/raw"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link1/title"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link2/title"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link3/title"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link4/title"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link5/title"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link6/title"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link7/title"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/link8/title"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="meta-info/favorite"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="captures/raw"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="config-file/raw"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="setup"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="setup-parameters"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="altexe1"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="altexe1-parameters"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="altexe2"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="altexe2-parameters"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="dosbox/title"/>
      	<xsl:text>","</xsl:text>
      	<xsl:value-of select="dosbox/version"/>
      	<xsl:text>"</xsl:text>
      	<xsl:text>&#10;</xsl:text>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
