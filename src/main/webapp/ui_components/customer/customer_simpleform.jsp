<form id="customerForm" class="form-horizontal" method="post" action="${linkTo[CustomerController].save }">
		<label class="col-md-4" for="firstName">
			<fmt:message key="form.customer.firstName.label" />
		</label>  
		<input
			id="firstName"
			name="customer.firstName"
			type="text"
			placeholder='<fmt:message key="form.customer.firstName.description" />'
			class="form-control input-md col-md-4"
			required=""
			value='<c:out value="${customer.firstName }" />' />

		<label class="col-md-4" for="lastName"><fmt:message key="form.customer.lastName.label" /></label>  
		<input
			id="lastName"
			name="customer.lastName"
			type="text"
			placeholder='<fmt:message key="form.customer.lastName.description" />'
			class="form-control input-md col-md-4"
			required=""
			value='<c:out value="${customer.lastName }" />' />

		<label class="col-md-4" for="email"><fmt:message key="form.customer.email.label" /></label>  
		<input
			id="email"
			name="customer.email"
			type="text"
			placeholder='<fmt:message key="form.customer.email.description" />'
			class="form-control input-md col-md-4"
			required=""
			value='<c:out value="${customer.lastName }" />' />

		<label class="col-md-4" for="address"><fmt:message key="form.customer.address.label" /></label>  
		<input
			id="address"
			name="customer.address"
			type="text"
			placeholder='<fmt:message key="form.customer.address.description" />'
			class="form-control input-md col-md-4"
			required=""
			value='<c:out value="${customer.lastName }" />' />

		<input type="hidden" value='<c:out value="${customer.id }" />' name="customer.id" id="customerId">
</form>
