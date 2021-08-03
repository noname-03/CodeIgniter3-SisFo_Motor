<div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Form Edit Data Customer</h4>
                  <p class="card-category">Awas Jangan Sampai Salah Yaaa</p>
                </div>
                <div class="card-body">
                <?php foreach ($tbl_customer as $customer) { ?>
                  <form action="<?php echo base_url().'index.php/Admin/Admin/data_customer_edit_aksi' ?>" method="POST">
                    <div class="row">
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">NIK</label>
                          <input type="hidden" class="form-control" name="id_customer" value="<?php echo $customer->id_customer ?>">
                          <input type="text" class="form-control" name="nik" value="<?php echo $customer->nik ?>">
                        </div>
                      </div>
                      <div class="col-md-5">
                        <div class="form-group">
                          <label class="bmd-label-floating">Nama Customer</label>
                          <input type="text" class="form-control" name="nm_customer" value="<?php echo $customer->nm_customer ?>">
                        </div>
                      </div>
                      <div class="form-group">
                      <div class="col-mx-a">
                        <label>Jenis Kelamin</label><br>
                        <div class="form-check form-check-inline">
                            <div class="custom-control custom-radio">
                            <input type="radio" class="custom-control-input" id="custom1" name="gender" value="Laki-Laki" <?php if($customer->gender == 'Laki-Laki') echo "checked='checked'" ?>>
                                <label class="custom-control-label" for="custom1">Laki-Laki</label>
                                </div>&nbsp;&nbsp;
                                <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" id="custom2" name="gender" value="Perempuan" <?php if($customer->gender == 'Perempuan') echo "checked='checked'" ?>>
                                <label class="custom-control-label" for="custom2">Perempuan</label>
                            </div>
											  </div>
                      </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">No HandPhone</label>
                          <input type="text" class="form-control" name="nohp" value="<?php echo $customer->nohp ?>">
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Alamat</label>
                          <input type="text" class="form-control" name="alamat" value="<?php echo $customer->alamat ?>">
                        </div>
                      </div>
                    </div>
                    <input type="submit" class="btn btn-primary pull-right" value="Update Data">
                    <div class="clearfix"></div>
                  </form>
                <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>