<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head>
<meta charset="utf-8"/>
<title>MENU</title>
</head>
<body>
<h1 align="center">PNEUMATIKY</h1>
<h2>PNEUMATIKA</h2>
<table style="width:100%;" border="1">
<tr>
<th>Znacka vyrobce</th>
<th>Prumer pneu</th>
<th>Rychlostni index</th>
<th>Sirka pneu</th>
<th>Price</th>
</tr>
<xsl:for-each select="/PNEUMATIKY/MENU/PNEUMATIKA">
<xsl:sort select="Type"/>
<tr>
<td>
<xsl:value-of select="Type"/>
</td>
<td>
<xsl:value-of select="Znacka_vyrobce"/>
</td>
<td>
<xsl:value-of select="Prumer_pneu"/>
</td>
<td>
<xsl:value-of select="Sirka_pneumatiky_v_mm"/>
</td>
<td>
<xsl:value-of select="Price"/>
</td>
</tr>
</xsl:for-each>
</table>
<h3>Seznam podle ceny</h3>
<table style="width:50%;" border="1">
<tr>
<th>Prumer pneu</th>
<th>Znacka vyrobce</th>
<th>Price</th>
</tr>
<xsl:for-each select="/PNEUMATIKY/MENU/PNEUMATIKA">
<xsl:sort select="Price"/>
<tr>
<td>
<xsl:value-of select="Znacka_vyrobce"/>
</td>
<td>
<xsl:value-of select="Type"/>
</td>
<td>
<xsl:value-of select="Price"/>
</td>
</tr>
</xsl:for-each>
</table>
<h3>Seznam podle sirky pneu</h3>
<table style="width:50%;" border="1">
<tr>
<th>Prumer pneu</th>
<th>Znacka vyrobce</th>
<th>Sirka pneu</th>
</tr>
<xsl:for-each select="/PNEUMATIKY/MENU/PNEUMATIKA">
<xsl:sort select="Sirka_pneumatiky_v_mm"/>
<xsl:choose>
<xsl:when test="Sirka_pneumatiky_v_mm < 225">
<tr>
<td>
<xsl:value-of select="Znacka_vyrobce"/>
</td>
<td>
<xsl:value-of select="Type"/>
</td>
<td>
<xsl:value-of select="Sirka_pneumatiky_v_mm"/>
</td>
</tr>
</xsl:when>
</xsl:choose>
</xsl:for-each>
</table>
<h3>Slozeni pneu</h3>
<table style="width:50%;" border="1">
<tr>
<th>Prumer pneu</th>
<th>Znacka vyrobce</th>
<th>Rychlostni index</th>
<th>Bocni profil pneumatiky</th>
<th>Sirka pneumatiky v mm</th>
<th>Zvysena nostnost</th>
<th>Bezdusova konstrukce</th>
<th>Tlak v pneumatikach</th>
<th>Price</th>
</tr>
<xsl:for-each select="/PNEUMATIKY/MENU/PNEUMATIKA/INDEX">
<xsl:sort select="index"/>
<tr>
<td>
<xsl:value-of select="Znacka_vyrobce"/>
</td>
<td>
<xsl:value-of select="Type"/>
</td>
<td>
<xsl:value-of select="Prumer_pneu"/>
</td>
<td>
<xsl:value-of select="Oznaceni_vyrobce"/>
</td>
<td>
<xsl:value-of select="Sirka_pneumatiky_v_mm"/>
</td>
<td>
<xsl:value-of select="Bocni_profil_pneumatiky"/>
</td>
<td>
<xsl:value-of select="Prumer_pneu"/>
</td>
<td>
<xsl:value-of select="INDEX"/>
</td>
<td>
<xsl:value-of select="Rychlostni_index"/>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>