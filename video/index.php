<html>
	<head>
	<meta charset="utf-8">
	<title>PHP CRUD Operation using PDO with Bootstrap/Modal</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
		<script src="./dataTables.min.js"></script>
		<script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
			    <link rel="stylesheet" type="text/css" href="/assets/plugins/fontawesome-free-5.4.1-web/css/all.min.css">
		<style>
			body
			{
				margin:0;
				pmodifiering:0;
				background-color:#f1f1f1;
			}
			.box
			{
				width:1270px;
				pmodifiering:20px;
				background-color:#fff;
				border:1px solid #ccc;
				border-radius:5px;
				margin-top:25px;
			}
		</style>
	</head>
	<body>
		<div class="container box">
			<h1 align="center">Gestion des équipements de video-protection</h1>
			<br />
			<div class="table-responsive">
				<br />
				<div align="right">
					<button type="button" id="add_button" data-toggle="modal" data-target="#userModal" class="btn btn-primary"><span class="glyphicon glyphicon-plus"> Ajouter</button>
			
				<a onclick="javascript:window.print()"><button type="button" id="modifier_button" data-toggle="modal" data-target="#userModal" class="btn btn-primary btn"><i class="fa fa-print"></i> Imprimer</button></a>
			<a href="videoExport.php" target="_parent"><button type="button" href="videoExport.php" class="btn btn-primary btn"><i class="fa fa-file-excel"></i>Export Excel</button></a>
				</div>
				<br /><br />
				
				<table id="user_data" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th width="10%">Image</th>
							<th width="35%">site</th>
							<th width="35%">equipement</th>
							<th width="35%">numeroserie</th>
							<th width="35%">repere</th>
							<th width="35%">dateinstallation</th>
							<th width="35%">dureegaranti</th>
							<th width="35%">ips</th>
							<th width="35%">mac</th>
							<th width="10%">modifier</th>
							<th width="10%">suppimer</th>
						</tr>
					</thead>
				</table>
				
			</div>
		</div>
	</body>
</html>

<div id="userModal" class="modal fade">
	<div class="modal-dialog">
		<form method="post" id="user_form" enctype="multipart/form-data">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">modifier User</h4>
				</div>
				<div class="modal-body">
					<label>Site</label>
					<input type="text" name="site" id="site" class="form-control" />
					<br />
					<label> Equipement</label>
					<input type="text" name="equipement" id="equipement" class="form-control" />
					<br />
							<label> N/S</label>
					<input type="text" name="numeroserie" id="numeroserie" class="form-control" />
					<br />
							<label> Repere</label>
					<input type="text" name="repere" id="repere" class="form-control" />
					<br />
							<label> Date d'installation</label>
					<input type="text" name="dateinstallation" id="numeroserie" class="form-control" />
					<br />
							<label> duree de garanti</label>
					<input type="text" name="dureegaranti" id="dureegaranti" class="form-control" />
					<br />
							<label> IP</label>
					<input type="text" name="ips" id="ips" class="form-control" />
					<br />
								<label> MAC</label>
					<input type="text" name="mac" id="mac" class="form-control" />
					<br />
					<label>Selectionner document PDF</label>
					<input type="file" name="user_image" id="user_image" />
					<span id="user_uploaded_image"></span>
				</div>
				<div class="modal-footer">
					<input type="hidden" name="user_id" id="user_id" />
					<input type="hidden" name="operation" id="operation" />
					<input type="submit" name="action" id="action" class="btn btn-success" value="add" />
					<button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
				</div>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript" language="javascript" >
$(document).ready(function(){
	$('#add_button').click(function(){
		$('#user_form')[0].reset();
		$('.modal-title').text("Ajouter un Equipement");
		$('#action').val("add");
		$('#operation').val("add");
		$('#user_uploaded_image').html('');
	});
	
	var dataTable = $('#user_data').DataTable({
		"processing":true,
		"serverSide":true,
		"order":[],
		"ajax":{
			url:"fetch.php",
			type:"POST"
		},
		"columnDefs":[
			{
				"targets":[0, 3, 4, 5, 6, 7, 8, 9, 10],
				"orderable":false,
			},
		],

	});

	$(document).on('submit', '#user_form', function(event){
		event.preventDefault();
		var site = $('#site').val();
		var equipement = $('#equipement').val();
				var numeroserie = $('#numeroserie').val();

				var repere = $('#repere').val();
		var dateinstallation = $('#dateinstallation').val();
				var dureegaranti = $('#dureegaranti').val();
		var ips = $('#ips').val();
			var mac = $('#mac').val();
		var extension = $('#user_image').val().split('.').pop().toLowerCase();
		if(extension != '')
		{
			if(jQuery.inArray(extension, ['gif','png','jpg','jpeg','pdf']) == -1)
			{
				alert("Invalid Image File");
				$('#user_image').val('');
				return false;
			}
		}	
		if(site != '' && equipement != '')
		{
			$.ajax({
				url:"insert.php",
				method:'POST',
				data:new FormData(this),
				contentType:false,
				processData:false,
				success:function(data)
				{
					alert(data);
					$('#user_form')[0].reset();
					$('#userModal').modal('hide');
					dataTable.ajax.reload();
				}
			});
		}
		else
		{
			alert("Tous les champs sont requis");
		}
	});
	
	$(document).on('click', '.modifier', function(){
		var user_id = $(this).attr("id");
		$.ajax({
			url:"fetch_single.php",
			method:"POST",
			data:{user_id:user_id},
			dataType:"json",
			success:function(data)
			{
				$('#userModal').modal('show');
				$('#site').val(data.site);
				$('#equipement').val(data.equipement);
					$('#numeroserie').val(data.numeroserie);
						$('#repere').val(data.repere);
							$('#dateinstallation').val(data.dateinstallation);
								$('#dureegaranti').val(data.dureegaranti);
									$('#ips').val(data.ips);
										$('#mac').val(data.mac);
				$('.modal-title').text("modifier Equipement");
				$('#user_id').val(user_id);
				$('#user_uploaded_image').html(data.user_image);
				$('#action').val("modifier");
				$('#operation').val("modifier");
			}
		})
	});
	
	$(document).on('click', '.delete', function(){
		var user_id = $(this).attr("id");
		if(confirm("Etes vous sur de vouloir supprimer?"))
		{
			$.ajax({
				url:"delete.php",
				method:"POST",
				data:{user_id:user_id},
				success:function(data)
				{
					alert(data);
					dataTable.ajax.reload();
				}
			});
		}
		else
		{
			return false;	
		}
	});
	
	
});
</script>