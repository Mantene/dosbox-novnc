<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8"/>
<xsl:template match="/">
<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
<html>
<head>
	<title><xsl:value-of select="document/export/title"/></title>
	<style>
		body {
			font-family: Verdana,Arial,sans-serif;
			text-align: left;
			color: rgb(153,153,204);
			background-color: rgb(68,68,102);
		}
		p {
			color: rgb(153,102,102);
			font-size: 11px;
		}
		table {
			width: 100%;
			border-spacing: 0;
		}
		table#m tr {
			color: rgb(68,0,0);
			background-color: rgb(153,153,204);
		}
		table#m tr:nth-child(even) {
			background-color: rgb(165,165,216);
		}
		table#m tr:hover {
			background-color: rgb(170,170,238);
			cursor: pointer;
		}
		table#m td, table#m th {
			font-size: 13px;
			padding: 5px 8px;
			border-bottom: 1px solid rgb(68,68,102);
		}
		table#m th {
			color: rgb(102,51,51);
		}
		.h {
			display: none;
		}
		div.f {
			position: fixed;
			left: 0;
			top: 0;
			width: 100%;
			height: 100%;
			background-color: rgba(0,0,0,0.3);
		}
		table.f {
			font-size: 10pt;
			cursor: pointer;
			width: 80%;
			margin: 80px auto;
			border: 1px solid black;
			color: rgb(68,0,0);
			background-color: rgb(153,153,204);
		}
		table.f th {
			font-size: 18px;
			font-weight: normal;
			padding: 10px 4px;
			color: rgb(153,153,204);
			background-color: rgb(68,68,102);
		}
		table.f td {
			vertical-align: top;
			padding: 2px 4px 2px 4px;
		}
		table.f td.first {
			padding-top: 1em;
		}
		table.f td div {
			padding: 1em 4px .5em 4px;
			-moz-column-count: 3;
			-moz-column-gap: 1em; 
			-webkit-column-count: 3;
			-webkit-column-gap: 1em; 
			column-count: 3;
			column-gap: 1em;
			max-height: 250px;
			overflow-x: auto;
		}
		table.f td span {
			font-weight: bold;
			margin-right: .5em;
		}
		table.f a {
			text-decoration: none;
			font-weight: bold;
			color: rgb(84,0,42);
		}
		table.f a:hover {
			color: white;
		}
	</style>
	<script>
		function t(trObj) {
			var obj = document.getElementById(trObj);
			if (obj)
				obj.className = obj.className == "f" ? "h" : "f";
			var div = document.getElementById("i");
			if (div)
				div.className = div.className == "f" ? "h" : "f";
		}
	</script>
</head>
<body>
	<h1>DBGL Profiles</h1>
	<p><xsl:value-of select="document/export/creationdatetime"/></p>
	<table id="m">
		<thead>
			<tr>
				<th>Title</th>
				<th>Publisher</th>
				<th>Year</th>
				<th>Genre</th>
				<th>Status</th>
				<th>Favorite</th>
			</tr>
		</thead>
		<tbody>
			<xsl:for-each select="document/profile">
				<xsl:sort select="title"/>
				<tr onclick="t('p{position()}')">
					<td><xsl:value-of select="title"/></td>
					<td><xsl:value-of select="meta-info/publisher"/></td>
					<td><xsl:value-of select="meta-info/year"/></td>
					<td><xsl:value-of select="meta-info/genre"/></td>
					<td><xsl:value-of select="meta-info/status"/></td>
					<td><xsl:value-of select="meta-info/favorite"/></td>
				</tr>
			</xsl:for-each>
		</tbody>
	</table>
 
 	<div id="i" class="h">
	<xsl:for-each select="document/profile">
		<xsl:sort select="title"/>
		<table id="p{position()}" class="h" onclick="t('p{position()}')">
			<thead><tr><th colspan="4"><xsl:value-of select="title"/></th></tr></thead>
			<tbody>
				<tr>
					<td class="first"><span>Developer:</span><xsl:value-of select="meta-info/developer"/></td>
					<td class="first"><span><xsl:value-of select="/document/export/custom1"/>:</span><xsl:value-of select="meta-info/custom1"/></td>
					<td class="first"><span><xsl:value-of select="/document/export/custom8"/>:</span><xsl:value-of select="meta-info/custom8"/></td>
					<td class="first"><xsl:if test="string(meta-info/link1/url)">
							<a target="_blank">
								<xsl:attribute name="href"><xsl:value-of select="meta-info/link1/url" disable-output-escaping="yes"/></xsl:attribute>
								<xsl:choose>
									<xsl:when test="string(meta-info/link1/title)"><xsl:value-of select="meta-info/link1/title"/></xsl:when>
									<xsl:otherwise><xsl:value-of select="meta-info/link1/raw"/></xsl:otherwise>
								</xsl:choose>
							</a>
						</xsl:if></td>
				</tr>
				<tr>
					<td><span>Publisher:</span><xsl:value-of select="meta-info/publisher"/></td>
					<td><span><xsl:value-of select="/document/export/custom2"/>:</span><xsl:value-of select="meta-info/custom2"/></td>
					<td><span><xsl:value-of select="/document/export/custom9"/>:</span><xsl:value-of select="meta-info/custom9"/></td>
					<td><xsl:if test="string(meta-info/link2/url)">
							<a target="_blank">
								<xsl:attribute name="href"><xsl:value-of select="meta-info/link2/url" disable-output-escaping="yes"/></xsl:attribute>
								<xsl:choose>
									<xsl:when test="string(meta-info/link2/title)"><xsl:value-of select="meta-info/link2/title"/></xsl:when>
									<xsl:otherwise><xsl:value-of select="meta-info/link2/raw"/></xsl:otherwise>
								</xsl:choose>
							</a>
						</xsl:if></td>
				</tr>
				<tr>
					<td><span>Genre:</span><xsl:value-of select="meta-info/genre"/></td>
					<td><span><xsl:value-of select="/document/export/custom3"/>:</span><xsl:value-of select="meta-info/custom3"/></td>
					<td><span><xsl:value-of select="/document/export/custom10"/>:</span><xsl:value-of select="meta-info/custom10"/></td>
					<td><xsl:if test="string(meta-info/link3/url)">
							<a target="_blank">
								<xsl:attribute name="href"><xsl:value-of select="meta-info/link3/url" disable-output-escaping="yes"/></xsl:attribute>
								<xsl:choose>
									<xsl:when test="string(meta-info/link3/title)"><xsl:value-of select="meta-info/link3/title"/></xsl:when>
									<xsl:otherwise><xsl:value-of select="meta-info/link3/raw"/></xsl:otherwise>
								</xsl:choose>
							</a>
						</xsl:if></td>
				</tr>
				<tr>
					<td><span>Year:</span><xsl:value-of select="meta-info/year"/></td>
					<td><span><xsl:value-of select="/document/export/custom4"/>:</span><xsl:value-of select="meta-info/custom4"/></td>
					<td><span><xsl:value-of select="/document/export/custom11"/>:</span><xsl:value-of select="meta-info/custom11"/></td>
					<td><xsl:if test="string(meta-info/link4/url)">
							<a target="_blank">
								<xsl:attribute name="href"><xsl:value-of select="meta-info/link4/url" disable-output-escaping="yes"/></xsl:attribute>
								<xsl:choose>
									<xsl:when test="string(meta-info/link4/title)"><xsl:value-of select="meta-info/link4/title"/></xsl:when>
									<xsl:otherwise><xsl:value-of select="meta-info/link4/raw"/></xsl:otherwise>
								</xsl:choose>
							</a>
						</xsl:if></td>
				</tr>
				<tr>
					<td><span>DOSBox:</span><xsl:value-of select="dosbox/title"/> (<xsl:value-of select="dosbox/version"/>)</td>
					<td><span><xsl:value-of select="/document/export/custom5"/>:</span><xsl:value-of select="meta-info/custom5"/></td>
					<td><span><xsl:value-of select="/document/export/custom12"/>:</span><xsl:value-of select="meta-info/custom12"/></td>
					<td><xsl:if test="string(meta-info/link5/url)">
							<a target="_blank">
								<xsl:attribute name="href"><xsl:value-of select="meta-info/link5/url" disable-output-escaping="yes"/></xsl:attribute>
								<xsl:choose>
									<xsl:when test="string(meta-info/link5/title)"><xsl:value-of select="meta-info/link5/title"/></xsl:when>
									<xsl:otherwise><xsl:value-of select="meta-info/link5/raw"/></xsl:otherwise>
								</xsl:choose>
							</a>
						</xsl:if></td>
				</tr>
				<tr>
					<td><span>Config:</span><a target="_blank"><xsl:attribute name="href"><xsl:value-of select="config-file/url" disable-output-escaping="yes" /></xsl:attribute><xsl:value-of select="config-file/raw"/></a></td>
					<td><span><xsl:value-of select="/document/export/custom6"/>:</span><xsl:value-of select="meta-info/custom6"/></td>
					<td><span><xsl:value-of select="/document/export/custom13"/>:</span><xsl:value-of select="meta-info/custom13"/></td>
					<td><xsl:if test="string(meta-info/link6/url)">
							<a target="_blank">
								<xsl:attribute name="href"><xsl:value-of select="meta-info/link6/url" disable-output-escaping="yes"/></xsl:attribute>
								<xsl:choose>
									<xsl:when test="string(meta-info/link6/title)"><xsl:value-of select="meta-info/link6/title"/></xsl:when>
									<xsl:otherwise><xsl:value-of select="meta-info/link6/raw"/></xsl:otherwise>
								</xsl:choose>
							</a>
						</xsl:if></td>
				</tr>
				<tr>
					<td><span>Captures:</span><a target="_blank"><xsl:attribute name="href"><xsl:value-of select="captures/url" disable-output-escaping="yes" /></xsl:attribute><xsl:value-of select="captures/raw"/></a></td>
					<td><span><xsl:value-of select="/document/export/custom7"/>:</span><xsl:value-of select="meta-info/custom7"/></td>
					<td><span><xsl:value-of select="/document/export/custom14"/>:</span><xsl:value-of select="meta-info/custom14"/></td>
					<td><xsl:if test="string(meta-info/link7/url)">
							<a target="_blank">
								<xsl:attribute name="href"><xsl:value-of select="meta-info/link7/url" disable-output-escaping="yes"/></xsl:attribute>
								<xsl:choose>
									<xsl:when test="string(meta-info/link7/title)"><xsl:value-of select="meta-info/link7/title"/></xsl:when>
									<xsl:otherwise><xsl:value-of select="meta-info/link7/raw"/></xsl:otherwise>
								</xsl:choose>
							</a>
						</xsl:if></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td><xsl:if test="string(meta-info/link8/url)">
							<a target="_blank">
								<xsl:attribute name="href"><xsl:value-of select="meta-info/link8/url" disable-output-escaping="yes"/></xsl:attribute>
								<xsl:choose>
									<xsl:when test="string(meta-info/link8/title)"><xsl:value-of select="meta-info/link8/title"/></xsl:when>
									<xsl:otherwise><xsl:value-of select="meta-info/link8/raw"/></xsl:otherwise>
								</xsl:choose>
							</a>
						</xsl:if></td>
				</tr>
				<tr>
					<td colspan="4"><div><xsl:value-of select="meta-info/notes"/><xsl:text disable-output-escaping="yes"></xsl:text></div></td>
				</tr>
			</tbody>
		</table>
	</xsl:for-each>
	</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
