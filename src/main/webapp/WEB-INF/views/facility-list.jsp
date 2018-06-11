<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="<c:url value='/css/style.css'/>" rel="stylesheet"
	type="text/css" />

<h3>User List page ${fn.length(facilitylist)}</h3>

<c:if test="${fn:length(facilitylist) gt 0}">
	<br />
	<br />
	<table class="borderAll">
		<c:forEach var="facility" items="${facilitylist}" varStatus="status">
			<tr class="${status.index%2==0?'even':'odd'}">
				<td class="nowrap">${status.index}</td>
				<td class="nowrap">${facility.facilitystatus}</td>
			</tr>
		</c:forEach>
	</table>
</c:if>