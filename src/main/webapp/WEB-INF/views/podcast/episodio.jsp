<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<head>
<title>Formulário</title>
<c:url value="/resources" var="resourcePath" />
<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
</head>
<tag:template>
	<jsp:body>
		<div id="sucesso" class="col-12"></div>
		<div class="col-sm-12" id="episodio-capa" style="weight:100%;height: 200px">
			<img id="capa" src="https://image.freepik.com/vrije-vector/gekleurde-achtergrond-van-abstracte-geluidsgolf_23-2147622442.jpg">
		</div>
		<div class="container">
		<div class="row">
			<div class="row">
				<div class="col-lg-2 col-md-3 col-sm-3">
					<img id="img-criador" class="rounded-circle" height="140" width="140" src="https://www.greenme.com.br/images/viver/saude-bem-estar/insatisfeito.jpg">
				</div>
				<div class="col-lg-10 col-md-9 col-sm-9" style="padding-left: 40px">
					<a id="nome-criador" class="font-weight-bold" href="https://twitter.com/_pequenospoemas">Pequenos Poemas</a>
					<div class="row" >
						<label id="titulo" class="font-weight-bold">Como estressar-se com front-end </label>
						<label id="data-postagem">| 01 de outubro de 2018</label>
					</div>
					<p id="descricao">"Tem dias de muita chuva, dias de roupa no chãoo, dias de movimeto, dias de sim e de nãoo. Você inventa dias de tormenta. Prefiro dias de algodão." Adaptado</p>
				</div>
				<div class="col-12">
                    <!-- Player audio -->
                    <div id="waveform"></div>

                    <div style="text-align: center">
                      <button class="btn btn-primary" onclick="wavesurfer.play()">Play</button>
                      <button class="btn btn-primary" onclick="wavesurfer.pause()">Pause</button>
                    </div>
                    <!-- Player audio -->
				</div>
			</div>
			</div>
		</div>

	<script src="../../resources/JS/jquery.min.js"></script>
	<script src="../../resources/JS/bootstrap/bootstrap.min.js"></script>
	<script src="../../resources/JS/imagesloaded.pkgd.min.js"></script>
	<script src="../../resources/JS/jquery-imagefill.js"></script>
	<script type="text/javascript">
		$('#episodio-capa').imagefill();
	</script>
		
	<script type="text/javascript">
		$(document).ready(		
			function toast(){
				x = new URL(location.href);
				if(x.searchParams.get("new") == "success"){
					document.getElementById('sucesso').innerHTML = '<div class="alert alert-success" role="alert">Episódio criado com sucesso!</div>';
				}
				setTimeout(function(){ document.getElementById('sucesso').innerHTML = ''}, 3000);
    		}
    	);
    </script>
    <!-- player audio -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wavesurfer.js/1.2.3/wavesurfer.min.js"></script>
    <script type="text/javascript" src="${resourcePath}/JS/player.js"></script>
	</jsp:body>
</tag:template>
