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
						<label class="control-label" style="position:relative; top:7px;">Commune:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="Commune">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">Adresse:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="Adresse">
					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">OM:</label>
					</div>
					<div class="col-sm-5">
									<select type="text" class="form-control" name="OM"><option>OUI </option><option>NON </option>
						</select>
					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">CS:</label>
					</div>
					<div class="col-sm-5">

						<select type="text" class="form-control" name="CS"><option>OUI </option><option>NON </option>
						</select>

					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">BIO:</label>
					</div>
					<div class="col-sm-5">
								<select type="text" class="form-control" name="BIO"><option>OUI </option><option>NON </option>
						</select>
					</div>
				</div>
											<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">OM_WEB:</label>
					</div>
					<div class="col-sm-5">
									<select type="text" class="form-control" name="OM_WEB"><option>OUI </option><option>NON </option>
						</select>
					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">CS_WEB:</label>
					</div>
					<div class="col-sm-5">

						<select type="text" class="form-control" name="CS_WEB"><option>OUI </option><option>NON </option>
						</select>

					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">BIO_WEB:</label>
					</div>
					<div class="col-sm-5">
								<select type="text" class="form-control" name="BIO_WEB"><option>OUI </option><option>NON </option>
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
