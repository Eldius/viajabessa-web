
<h3><fmt:message key="form.customer.title" /></h3>

<a class="btn btn-default" href="${linkTo[ViagemController].form()}">Novo</a>

<br />

<table class="table table-stripped">
    <thead>
        <tr>
            <th>#id</th>
            <th>t&iacute;tulo</th>
            <th>valor</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${pacoteViagemList}" var="pacote">
            <tr>
                <td><c:out value="${pacote.id}" />
                <td><c:out value="${pacote.titulo}" />
                <td><c:out value="${pacote.valor}" />
            </tr>
        </c:forEach>
    </tbody>
</table>

<script>
	function init(){
		$(".menu").find(".customer").addClass("active");

		$(".editElement").click(function(){
			var url = $(this).data('element-url');
			showModalForm(url);
		});
	}
</script>
