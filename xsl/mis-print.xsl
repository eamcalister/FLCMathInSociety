<?xml version='1.0'?> <!-- As XML file -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- Thin layer on MathBook XML -->
<xsl:import href="../../../mathbook/xsl/pretext-latex.xsl" />

<!-- Intend output for rendering by xelatex -->
<xsl:output method="text" />

<!-- This version for print -->
<xsl:param name="latex.preamble.early" select="concat(document('latex-preamble/latex.preamble.xml')//latex-preamble-early, document('latex-preamble/print.preamble.xml')//latex-preamble-early)" />
<xsl:param name="latex.preamble.late" select="concat(document('latex-preamble/latex.preamble.xml')//latex-preamble-late, document('latex-preamble/print.preamble.xml')//latex-preamble-late)" />

<!-- set toc level -->
<xsl:param name="toc.level" select="'2'"/>

<!-- print options -->
<xsl:param name="latex.print" select="'yes'"/>
<xsl:param name="latex.pageref" select="'no'"/>
<xsl:param name="latex.sides" select="'two'"/>

<!-- geometry of the page -->
<!-- the extra bit is for thumb indexing to bleed; the cut size is still 8x11 -->
<xsl:param name="latex.geometry" select="'papersize={8.5in,11in},total={6.5in,8in}'"/>

<!-- hints, answers, solutions -->
<xsl:param name="exercise.inline.hint" select="'no'"/>
<xsl:param name="exercise.inline.answer" select="'no'"/>
<xsl:param name="exercise.inline.solution" select="'yes'"/>
<xsl:param name="exercise.divisional.hint" select="'no'"/>
<xsl:param name="exercise.divisional.answer" select="'no'"/>
<xsl:param name="exercise.divisional.solution" select="'no'"/>

</xsl:stylesheet>
