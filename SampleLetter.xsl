<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	xmlns:barcode="org.krysalis.barcode4j.xalan.BarcodeExt"
	xmlns:common="http://exslt.org/common"
	xmlns:xalan="http://xml.apache.org"
	xmlns:xhtml="http://www.w3.org/1999/xhtml"
	exclude-result-prefixes="barcode common xalan">
	<xsl:template match="body">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="my-page">
					<fo:region-body margin="1in" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="my-page">
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:for-each select="paragraph">
							<fo:block space-after="1.4em">
								<xsl:value-of select="section" />
							</fo:block>
						</xsl:for-each>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
