
<table class='table table-striped'>
	<thead>
		<tr>
			<th>
				<fmt:message key='table.customer.id' />
			</th>
			<th>
				<fmt:message key='table.customer.fullName' />
			</th>
			<th>
				<fmt:message key='table.customer.email' />
			</th>
			<th>
				<fmt:message key='table.customer.action' />
			</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items='${customerList }' var='customerIt' varStatus='id'>
			<tr>
				<td>
					<c:out value='${customerIt.id }' />
				</td>
				<td>
					<c:out value='${customerIt.fullName }' />
				</td>
				<td>
					<c:out value='${customerIt.email }' />
				</td>
				<td>
					<a
						class="btn btn-default editElement"
						data-element-id="${customerIt.id }"
						data-element-url="${linkTo[CustomerController].findAsJson(customerIt.id) }">
						<span class='glyphicon glyphicon-pencil'></span>
					</a>
					<a
						class="btn btn-danger deleteElement"
						data-dialog-yes-button="<fmt:message key="dialog.yes.button" />"
						data-dialog-no-button="<fmt:message key="dialog.no.button" />"
						data-dialog-title='<fmt:message key="element.delete.title" />'
						data-dialog-message='<fmt:message key="element.delete.message" ><fmt:param value="${customerIt.fullName }" /></fmt:message>'
						data-delete-url="${linkTo[CustomerController].delete(customerIt.id) }">
						<span class='glyphicon glyphicon-remove'></span>
					</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
