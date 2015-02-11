
<form class="form-horizontal" action="${linkTo[ViagemController].salvar()}" method="post">
<fieldset>

<!-- Form Name -->
<legend>Pacote</legend>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="titulo">T&iacute;tulo</label>
  <div class="controls">
    <input id="titulo" name="pacote.titulo" type="text" placeholder="T&iacute;tulo" class="input-xlarge" required="">

  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="foto">URL Foto</label>
  <div class="controls">
    <input id="foto" name="pacote.foto" type="text" placeholder="URL Foto" class="input-xlarge" required="">

  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="valor">Valor R$</label>
  <div class="controls">
    <input id="valor" name="pacote.valor" type="text" placeholder="Valor" class="input-xlarge" required="">

  </div>
</div>

<!-- Textarea -->
<div class="control-group">
  <label class="control-label" for="descricao">Descri&ccedil;&atilde;o</label>
  <div class="controls">
    <textarea id="descricao" name="pacote.descricao"></textarea>
  </div>
</div>

<!-- Button -->
<div class="control-group">
  <label class="control-label" for="salvar"></label>
  <div class="controls">
    <button id="salvar" name="salvar" class="btn btn-primary">Salvar</button>
  </div>
</div>

</fieldset>
</form>


<script>
	function init(){
		$(".menu").find(".customer").addClass("active");

		$(".editElement").click(function(){
			var url = $(this).data('element-url');
			showModalForm(url);
		});
	}
</script>
