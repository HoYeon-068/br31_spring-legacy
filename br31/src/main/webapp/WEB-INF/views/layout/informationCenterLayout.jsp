<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<div style="position:fixed;top:0;left:0;z-index:999999;background:yellow;">
  IC_LAYOUT_RENDERED
</div>

<tiles:insertAttribute name="header"/>

<div class="site-container">
  <jsp:include page="/WEB-INF/views/information-center/common/_customerMenu.jsp"/>
  <tiles:insertAttribute name="content"/>
</div>

<tiles:insertAttribute name="footer"/>
