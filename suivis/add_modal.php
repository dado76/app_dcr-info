<!-- Add New -->
<div class="modal fade" id="addnew" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel"></h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="add.php">
				<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">Dates:</label>
					</div>
					<div class="col-sm-5">
						<input type="date" class="form-control" name="Dates" value="<?php echo $now;?>">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">codification:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="codification">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">identification:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="identification">
					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">GPS:</label>
					</div>
					<div class="col-sm-5">
									<select type="text" class="form-control" name="GPS"><option>OUI </option><option>NON </option>
						</select>
					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">RFID:</label>
					</div>
					<div class="col-sm-5">

						<select type="text" class="form-control" name="RFID"><option>OUI </option><option>NON </option>
						</select>

					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">comptage:</label>
					</div>
					<div class="col-sm-5">
								<select type="text" class="form-control" name="comptage"><option>OUI </option><option>NON </option>
						</select>
					</div>
				</div>
        <div class="row form-group">
          <div class="col-sm-5">
            <label class="control-label" style="position:relative; top:7px;">commentaire:</label>
          </div>
          <div class="col-sm-5">
            <input type="text" class="form-control" name="commentaire">
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
