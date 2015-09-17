<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE xsl:stylesheet PUBLIC "-//FreeBSD//DTD FreeBSD XSLT 1.0 DTD//EN"
				"http://www.FreeBSD.org/XML/share/xml/xslt10-freebsd.dtd" [
<!ENTITY base "..">
<!ENTITY title "The FreeBSD GNOME Project">
]>
<!-- $FreeBSD$ -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
		xmlns:rdf1="http://my.netscape.com/rdf/simple/0.9/"
		xmlns="http://www.w3.org/1999/xhtml"
		exclude-result-prefixes="rdf rdf1" version="1.0">

  <xsl:import href="http://www.FreeBSD.org/XML/lang/share/xml/libcommon.xsl"/>
  <xsl:import href="http://www.FreeBSD.org/XML/share/xml/xhtml.xsl"/>

  <xsl:variable name="title">&title;</xsl:variable>

  <xsl:template name="process.content">
              <div id="sidewrap">
                &nav.gnome;
              </div> <!-- SIDEWRAP -->

	      <div id="contentwrap">
		<div id="rightwrap">
		  <div class="rightnav">

		    <h2>FreeBSD GNOME News</h2>

		    <p>Latest update:
		      <xsl:value-of
			select="descendant::month[position() = 1]/name"/>
		      <xsl:text> </xsl:text>
		      <xsl:value-of
			select="descendant::day[position() = 1]/name"/>,
		      <xsl:text> </xsl:text>
		      <xsl:value-of
			select="descendant::year[position() = 1]/name"/></p>
		    <ul>

		      <!-- Pull in the 10 most recent news items -->
		      <xsl:for-each select="descendant::event[position() &lt;= 5]">
			<li><a>
			    <xsl:attribute name="href">
			      newsflash.html#<xsl:call-template name="generate-event-anchor"/>
			    </xsl:attribute>
			    <xsl:choose>
			      <xsl:when test="count(child::title)">
				<xsl:value-of select="title"/><br/>
			      </xsl:when>
			      <xsl:otherwise>
				<xsl:apply-templates select="p" mode="copy.html"/><br/>
			      </xsl:otherwise>
			    </xsl:choose>
			  </a></li>
		      </xsl:for-each>
		      <li><a href="newsflash.html">More...</a></li>
		    </ul>
		  </div> <!-- rightnav -->
                </div> <!-- rightwrap -->

		<h1>&title;</h1>

		<h2>What software does the GNOME Team maintain?</h2>

		<p>The GNOME team maintains the GNOME, MATE and the
		  Cinnamon desktop enviroments.</p>

		<h2>What is GNOME?</h2>

		<img src="&base;/gnome/images/gnome.png" align="right"
                   border="0" alt="GNOME Logo"/>

		<p>GNOME is a complete graphical desktop for X,
	       	   including everything from a window manager to
		   web browsers, audio players, office programs,
		   graphical login program and more.  MATE is
		   a continuation of the old GNOME 2 desktop
		   enviroment.  Cinnamon is originally a fork
		   of GNOME 3's gnome-shell, but grew into its own
		   desktop enviroment.</p>

		<h2>How to install these desktop enviroments?</h2>

		<p>There are some so called meta ports available for
		  installing these desktop enviroments or parts of
		  them. There are:
		  <ul>
		    <li>gnome3 (full GNOME desktop)</li>
		    <li>gnome3-lite (minimal GNOME desktop)</li>
		    <li>mate (full MATE desktop)</li>
		    <li>mate-lite (minimal MATE desktop)</li>
		    <li>cinnamon</li>
		  </ul>
		  The easiest way of installing is to do 'pkg install gnome3' for example.
		</p>


		<h2>State of the port</h2>

		<p>GNOME/MATE/CINNAMON for &os; are currently fully supported on
		  9.3, and 9.3-STABLE, 10.2, 10.1 and 10.1-STABLE while 11.0-CURRENT is provided on a best effort basis.
		  There is still <a href="docs/volunteer.html">plenty left to be done</a>!</p>

		<p>GNOME is simple and easy to build using the &os; ports system, but
	          sometimes things simply go wrong.</p>

		<h2>Resources</h2>
		<ul>
		  <li><a href="http://www.gnome.org/">GNOME Project</a></li>
		  <li><a href="http://news.gnome.org">GNOME Project news</a></li>
		  <li><a href="http://developer.gnome.org">GNOME development platform</a></li>
		  <li><a href="http://www.gnomefiles.org">GTK+ software repository</a></li>
		  <li><a href="http://planet.gnome.org">Planet GNOME (blogs)</a></li>
		  <li><a href="http://mate-desktop.org/">MATE Project</a></li>
		  <li><a href="http://cinnamon.linuxmint.com/">Cinnamon Project</a></li>
		</ul>

		<h2>Related Projects</h2>
		<ul>
		  <li><a href="http://www.kde.org/">KDE Project</a></li>
		  <li><a href="http://freebsd.kde.org/">KDE on FreeBSD</a></li>
		  <li><a href="http://www.xfce.org/">XFCE Project</a></li>
		  <li><a href="https://wiki.freebsd.org/Xfce">XFCE on FreeBSD</a></li>
		  <li><a href="http://www.opengroup.org/desktop/">CDE (commercial)</a></li>
		</ul>

	  	</div> <!-- contentwrap -->

	      <br class="clearboth" />
  </xsl:template>
</xsl:stylesheet>
