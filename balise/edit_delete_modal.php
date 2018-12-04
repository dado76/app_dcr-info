<!-- Edit -->
<div class="modal fade" id="edit_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel"></h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="edit.php?id=<?php echo $row['id']; ?>">
				<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">codification:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="codification" value="<?php echo $row['codification']; ?>">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">sim:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="sim" value="<?php echo $row['sim']; ?>">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">balise:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="balise" value="<?php echo $row['balise']; ?>">
					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">telephone:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="telephone" value="<?php echo $row['telephone']; ?>">
					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">idport:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="idport" value="<?php echo $row['idport']; ?>">
					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">immatriculation:</label>
					</div>
					<div class="col-sm-5">

						<input type="text" class="form-control" name="immatriculation" value="<?php echo $row['immatriculation']; ?>">
					</div>
				</div>
        <div class="row form-group">
  <div class="col-sm-5">
    <label class="control-label" style="position:relative; top:7px;">statut:</label>
  </div>
  <div class="col-sm-5">

    <input type="text" class="form-control" name="statut" value="<?php echo $row['statut']; ?>">
  </div>
</div>
        <div class="row form-group">
  <div class="col-sm-5">
    <label class="control-label" style="position:relative; top:7px;">rfid:</label>
  </div>
  <div class="col-sm-5">

    <input type="text" class="form-control" name="rfid" value="<?php echo $row['rfid']; ?>">
  </div>
</div>
        <div class="row form-group">
  <div class="col-sm-5">
    <label class="control-label" style="position:relative; top:7px;">navigation:</label>
  </div>
  <div class="col-sm-5">

    <input type="text" class="form-control" name="navigation" value="<?php echo $row['navigation']; ?>">
  </div>
</div>
        <div class="row form-group">
  <div class="col-sm-5">
    <label class="control-label" style="position:relative; top:7px;">origin:</label>
  </div>
  <div class="col-sm-5">

    <input type="text" class="form-control" name="origin" value="<?php echo $row['origin']; ?>">
  </div>
</div>


            </div>
			</div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>Annuler</button>
              <button type="submit" name="edit" class="btn btn-success"><span class="glyphicon glyphicon-check"></span>Modifier</a>
			</form>
            </div>

        </div>
    </div>
</div>

<!-- Delete -->
<div class="modal fade" id="delete_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel"></h4></center>
            </div>
            <div class="modal-body">
            	<p class="text-center">Etes vous sur de vouloir supprimer l'enregistrement ?</p>
				<h2 class="text-center"><?php echo $row['codification'].' '.$row['immatriculation']; ?></h2>
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>Annuler</button>
                <a href="delete.php?id=<?php echo $row['id']; ?>" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span>Valider</a>
            </div>

        </div>
    </div>
</div>
