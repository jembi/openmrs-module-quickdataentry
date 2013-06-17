<%@ include file="/WEB-INF/template/include.jsp"%>

<%@ include file="/WEB-INF/template/header.jsp"%>
<openmrs:htmlInclude file="/scripts/calendar/calendar.js" />
<openmrs:htmlInclude file="/moduleResources/quickdataentry/style/stylesheet.css" />
<openmrs:htmlInclude file="/moduleResources/quickdataentry/scripts/jquery-1.3.2.js" />

<script type="text/javascript">
	var $qle= jQuery.noConflict();
</script>

<h2><spring:message code="quickdataentry.drugtitle"/></h2>

<br/>
<form action="quickdrugentryForm.form" method="get" id="form_select">

	<b class="boxHeader"><spring:message code="quickdataentry.boxtitle" /></b>
	<div class="box">
		<table>
			<tr>
				<td><spring:message code="quickdataentry.patient"/></td>
				<td><openmrs_tag:patientField formFieldName="patientId" initialValue="${patient}"/></td>
			</tr>
			<tr>
				<td><spring:message code="quickdataentry.location"/></td>
				<td><openmrs_tag:locationField formFieldName="locationId" initialValue="${model.location}" /></td>
			</tr>
			<tr>
				<td><spring:message code="quickdataentry.numbercolumns"/></td>
				<td>
					<select name="noRows" id="noRows" onselect="setTableRows()">
						<c:forEach var="item" items="1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20"varStatus="status">
							<option <c:if test="${item==model.noRows}" >selected="selected"</c:if>
							value="${item}">${status.count}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="rowSelect" value="<spring:message code="quickdataentry.confirm"/>" /></td>
			</tr>
		</table>
	</div>
	
</form>

<%@ include file="/WEB-INF/template/footer.jsp"%>
