<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" omit-xml-declaration="yes" xalan:indent-amount="2" xmlns:xalan="http://xml.apache.org/xslt" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>
  <xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title><xsl:value-of select="document/export/title"/></title>
    <style type="text/css">
      #thebody {font-family:Verdana,Geneva,Arial,Helvetica,sans-serif; font-size:8pt;}
      #thetable th {color:white; background-color:black; text-align:left;}
      #thetable tr td {vertical-align:top;}
      #thetable .r0 {background-color:#f9f9f9;}
      #thetable .r1 {background-color:#f7f7e7;}
      #thetable .r2 {background-color:#d7d7c7; cursor:pointer}
      #thetable tr td a {color:black;}
      #thetable table {width:100%}
      #thetable table table {border:1px solid black; border-top:0; width:100%}
      #thetable table table tr td span {font-weight:bold; margin-right:1em;}
    </style>
    <script type="text/javascript">
      function i(trObj) {
        var obj = document.getElementById(trObj);
        if (obj) {
          obj.style.display = (obj.style.display == "")? "none": "";
        }
      }
    </script>
  </head>
  <body id="thebody">
    <h1>DBGL Profiles</h1>
    <p><xsl:value-of select="document/export/creationdatetime"/></p>
    <table id="thetable" cellspacing="0" cellpadding="2">
    <tr>
      <th>Title</th>
      <th>Genre</th>
      <th>Year</th>
      <th>Status</th>
    </tr>
    <xsl:for-each select="document/profile">
      <xsl:sort select="title"/>
        <tr class="r{position() mod 2}" onclick="i('e{position()}')" onmouseover="this.className='r2'" onmouseout="this.className='r{position() mod 2}'">
          <td><xsl:value-of select="title"/></td>
          <td><xsl:value-of select="meta-info/genre"/></td>
          <td><xsl:value-of select="meta-info/year"/></td>
          <td><xsl:value-of select="meta-info/status"/></td>
        </tr>
        <tr id="e{position()}" class="r{position() mod 2}" style="display:none">
          <td colspan="4"><table cellspacing="0" cellpadding="2">
              <tr>
              	<td>
                    <table cellspacing="0" cellpadding="2">
						<tr>
							<td style="min-width:30em"><span>Developer</span><xsl:value-of select="meta-info/developer"/></td>
							<td style="min-width:30em"><span>DOSBox</span><xsl:value-of select="dosbox/title"/> (<xsl:value-of select="dosbox/version"/>)</td>
							<td rowspan="19"><xsl:value-of select="meta-info/notes"/></td>
						</tr>
						<tr>
							<td><span>Publisher</span><xsl:value-of select="meta-info/publisher"/></td>
							<td><span>Config-file</span><a><xsl:attribute name="href"><xsl:value-of select="config-file/url" disable-output-escaping="yes" /></xsl:attribute><xsl:value-of select="config-file/raw"/></a></td>
						</tr>
						<tr>
							<td><span>Setup</span><xsl:value-of select="setup"/><xsl:text> </xsl:text><xsl:value-of select="setup-parameters"/></td>
							<td><span>Captures</span><a><xsl:attribute name="href"><xsl:value-of select="captures/url" disable-output-escaping="yes" /></xsl:attribute><xsl:value-of select="captures/raw"/></a></td>
						</tr>
						<tr>
							<td><span>Alt. exe 1</span><xsl:value-of select="altexe1"/><xsl:text> </xsl:text><xsl:value-of select="altexe1-parameters"/></td>
							<td><span>Favorite</span><xsl:value-of select="meta-info/favorite"/></td>
						</tr>
						<tr>
							<td><span>Alt. exe 2</span><xsl:value-of select="altexe2"/><xsl:text> </xsl:text><xsl:value-of select="altexe2-parameters"/></td>
							<td></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom1"/></span><xsl:value-of select="meta-info/custom1"/></td>
							<td><xsl:if test="string(meta-info/link1/url)"><a><xsl:attribute name="href"><xsl:value-of select="meta-info/link1/url" disable-output-escaping="yes"/></xsl:attribute><xsl:value-of select="meta-info/link1/raw"/></a></xsl:if></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom2"/></span><xsl:value-of select="meta-info/custom2"/></td>
							<td><xsl:if test="string(meta-info/link2/url)"><a><xsl:attribute name="href"><xsl:value-of select="meta-info/link2/url" disable-output-escaping="yes"/></xsl:attribute><xsl:value-of select="meta-info/link2/raw"/></a></xsl:if></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom3"/></span><xsl:value-of select="meta-info/custom3"/></td>
							<td><xsl:if test="string(meta-info/link3/url)"><a><xsl:attribute name="href"><xsl:value-of select="meta-info/link3/url" disable-output-escaping="yes"/></xsl:attribute><xsl:value-of select="meta-info/link3/raw"/></a></xsl:if></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom4"/></span><xsl:value-of select="meta-info/custom4"/></td>
							<td><xsl:if test="string(meta-info/link4/url)"><a><xsl:attribute name="href"><xsl:value-of select="meta-info/link4/url" disable-output-escaping="yes"/></xsl:attribute><xsl:value-of select="meta-info/link4/raw"/></a></xsl:if></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom5"/></span><xsl:value-of select="meta-info/custom5"/></td>
							<td><xsl:if test="string(meta-info/link5/url)"><a><xsl:attribute name="href"><xsl:value-of select="meta-info/link5/url" disable-output-escaping="yes"/></xsl:attribute><xsl:value-of select="meta-info/link5/raw"/></a></xsl:if></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom6"/></span><xsl:value-of select="meta-info/custom6"/></td>
							<td><xsl:if test="string(meta-info/link6/url)"><a><xsl:attribute name="href"><xsl:value-of select="meta-info/link6/url" disable-output-escaping="yes"/></xsl:attribute><xsl:value-of select="meta-info/link6/raw"/></a></xsl:if></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom7"/></span><xsl:value-of select="meta-info/custom7"/></td>
							<td><xsl:if test="string(meta-info/link7/url)"><a><xsl:attribute name="href"><xsl:value-of select="meta-info/link7/url" disable-output-escaping="yes"/></xsl:attribute><xsl:value-of select="meta-info/link7/raw"/></a></xsl:if></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom8"/></span><xsl:value-of select="meta-info/custom8"/></td>
							<td><xsl:if test="string(meta-info/link8/url)"><a><xsl:attribute name="href"><xsl:value-of select="meta-info/link8/url" disable-output-escaping="yes"/></xsl:attribute><xsl:value-of select="meta-info/link8/raw"/></a></xsl:if></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom9"/></span><xsl:value-of select="meta-info/custom9"/></td>
							<td></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom10"/></span><xsl:value-of select="meta-info/custom10"/></td>
							<td></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom11"/></span><xsl:value-of select="meta-info/custom11"/></td>
							<td></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom12"/></span><xsl:value-of select="meta-info/custom12"/></td>
							<td></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom13"/></span><xsl:value-of select="meta-info/custom13"/></td>
							<td></td>
						</tr>
						<tr>
							<td><span><xsl:value-of select="/document/export/custom14"/></span><xsl:value-of select="meta-info/custom14"/></td>
							<td></td>
						</tr>
					</table>
				</td>
              </tr>
            </table></td>
        </tr>
    </xsl:for-each>
    </table>
  </body>
</html>
  </xsl:template>
</xsl:stylesheet>
