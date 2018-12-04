<!-- Add New -->
<div class="modal fade" id="addnew" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel"></h4></center>
            </div>
                                <center>  <H2> Ajout d'une radio </h2></center>
            <div class="modal-body">

			<div class="container-fluid">
			<form method="POST" action="add.php">

				<div class="row form-group">
					<div class="col-sm-4">
						<label class="control-label" style="position:relative; top:7px;">Dates de livraison:</label>
					</div>
					<div class="col-sm-5">
						<input type="date" class="form-control" name="Dates" value="<?php echo $now;?>">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-4">
						<label class="control-label" style="position:relative; top:7px;">N° Appel:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="numero_appel">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-4">
						<label class="control-label" style="position:relative; top:7px;">Codification:</label><br><br>
					</div>
          <br><br>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="codification">
					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-4">
						<label class="control-label" style="position:relative; top:7px;">numero de serie:</label>
					</div>
          <div class="col-sm-5">
            <input type="text" class="form-control" name="numeroserie">
          </div>
        </div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">type:</label>
					</div>
					<div class="col-sm-5">

						<select type="text" class="form-control" name="type"><option>PORTATIF </option><option>FIXE </option><option>PTI </option>
						</select>

					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">statut:</label>
					</div>
					<div class="col-sm-5">
								<select type="text" class="form-control" name="statut"><option>EN SERVICE </option><option>EN STOCK </option><option>REFORME </option><option>SAV </option>
						</select>
					</div>
				</div>
        <div class="row form-group">
          <div class="col-sm-5">
            <label class="control-label" style="position:relative; top:7px;">modele:</label>
          </div>
          <div class="col-sm-5">
								<select type="text" class="form-control" name="modele"><option>STP9040</option><option>SRM3500</option><option>SRG3900</option><option>AUTRE</option>
						</select>
					</div>
				</div>
            </div>
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span>Annuler</button>
                <button type="submit" name="add" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span>Ajouter</a>
			</form>
            </div>

        </div>
    </div>
</div>
