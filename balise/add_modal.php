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
						<label class="control-label" style="position:relative; top:7px;">Codification:</label>
					</div>
					<div class="col-sm-5">
						<input type="codification" class="form-control" name="codification">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">carte sims:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="sim">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">balise:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="balise">
					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">telephone:</label>
					</div>
						<div class="col-sm-5">
						<input type="text" class="form-control" name="telephone">
					</div>
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">idport:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="idport">
					</div>
			
				</div>
								<div class="row form-group">
					<div class="col-sm-5">
						<label class="control-label" style="position:relative; top:7px;">immatriculation:</label>
					</div>
					<div class="col-sm-5">
						<input type="text" class="form-control" name="immatriculation">
					</div>
				</div>
        <div class="row form-group">
          <div class="col-sm-5">
            <label class="control-label" style="position:relative; top:7px;">statut:</label>
          </div>
          <div class="col-sm-5">
            <input type="text" class="form-control" name="statut">
          </div>
        </div>
		    <div class="row form-group">
          <div class="col-sm-5">
            <label class="control-label" style="position:relative; top:7px;">RFID:</label>
          </div>
          <div class="col-sm-5">
            <input type="text" class="form-control" name="rfid">
          </div>
        </div>
		    <div class="row form-group">
          <div class="col-sm-5">
            <label class="control-label" style="position:relative; top:7px;">navigation:</label>
          </div>
          <div class="col-sm-5">
            <input type="text" class="form-control" name="navigation">
          </div>
        </div>
		    <div class="row form-group">
          <div class="col-sm-5">
            <label class="control-label" style="position:relative; top:7px;">origin:</label>
          </div>
          <div class="col-sm-5">
            <input type="text" class="form-control" name="origin">
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
