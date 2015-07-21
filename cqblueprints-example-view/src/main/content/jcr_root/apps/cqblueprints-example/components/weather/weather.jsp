<%@page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/libs/foundation/global.jsp" %>

<%@ taglib prefix="slice" uri="http://cognifide.com/jsp/slice"%>
<slice:lookup var="model" type="<%=com.cqblueprints.example.services.ui.WeatherBean.class%>"/>

<cq:includeClientLib css="cqblueprints-example.components"/>
<cq:includeClientLib js="cqblueprints-example.components"/>

<div class="global-weather">

    <span class="global-weather__header">${model.title}</span>
    <br>
    <span>
        This example shows how to use SLICE bean in JSP.
        Also you can see there CSS class name convention example and i18n.
        <br>
        <%--<fmt:message key="info.weather.Info"/>--%>
    </span>

    <br>
    <span>
        This example shows how to use SLICE bean in JSP with OSGi service.
        <br>
        ${model.messageFromService}
    </span>
</div>