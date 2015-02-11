

	<div id="customerFormHtml" class="hide">
		<%@ include file="/ui_components/customer/customer_simpleform.jsp" %>
	</div>

	<script type="text/javascript">
		function showModalForm(url) {

			var message = $("#customerFormHtml").html();

			BootstrapDialog.show({
			    title: "<fmt:message key="form.customer.form.title" />",
			    message: message,
			    buttons: [{
	                label: '<fmt:message key="form.save.button" />',
	                cssClass: 'btn-primary',
	                action: function(dialogItself) {
	                	dialogItself.getModal().children().find("#customerForm").submit();
	                }
	            }, {
	                label: '<fmt:message key="form.cancel.button" />',
	                action: function(dialog){
	                    dialog.close();
	                }
	            }],
            	onshow: function(dialog) {
                	if(url !== undefined){

	            		jQuery.get(
							url
							, function(data, textStatus) {
								dialog.getModal().children().find("#firstName").val(data.firstName);
								dialog.getModal().children().find("#lastName").val(data.lastName);
								dialog.getModal().children().find("#email").val(data.email);
								dialog.getModal().children().find("#address").val(data.address);
								dialog.getModal().children().find("#customerId").val(data.id);
							}
                   		);
                	}
                },
            	onshown: function(dialog) {
                },
                onhide: function(dialog) {
                },
                onhidden: function(dialog) {
                }
			});
		}
	</script>
