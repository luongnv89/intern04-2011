<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<html>
<head>
<sj:head />
</head>
<body>
	<sj:tabbedpanel id="mytabs" animate="true" collapsible="true"
		useSelectedTabCookie="true">
		<sj:tab id="tab1" target="tone" label="Tab One" />
		<sj:tab id="tab2" target="ttwo" label="Tab Two" />
		<sj:tab id="tab3" target="tthree" label="Tab Three" />
		<div id="tone">Test 1</div>
		<div id="ttwo">Test 2</div>
		<div id="tthree">Test 3</div>
	</sj:tabbedpanel>

</body>
</html>