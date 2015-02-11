

<form class="form-horizontal" method="post" action="${linkTo[CustomerController].save }">
	<fieldset>

		<!-- Form Name -->
		<legend>
			<fmt:message key="form.customer.form.title" />
		</legend>

		<input type="hidden" value='<c:out value="${customer.id }" />' name="customer.id">

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="firstName">
				<fmt:message key="form.customer.firstName.label" />
			</label>  
			<div class="col-md-4">
				<input
					id="firstName"
					name="customer.firstName"
					type="text"
					placeholder='<fmt:message key="form.customer.firstName.description" />'
					class="form-control input-md"
					required=""
					value='<c:out value="${customer.firstName }" />' />
			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="lastName"><fmt:message key="form.customer.lastName.label" /></label>  
			<div class="col-md-4">
				<input
					id="lastName"
					name="customer.lastName"
					type="text"
					placeholder='<fmt:message key="form.customer.lastName.description" />'
					class="form-control input-md"
					required=""
					value='<c:out value="${customer.lastName }" />' />
			</div>
		</div>

		<!-- Button -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="save"></label>
			<div class="col-md-4">
				<button id="save" name="save" class="btn btn-primary"><fmt:message key="form.save.button" /></button>
			</div>
		</div>

	</fieldset>
</form>
