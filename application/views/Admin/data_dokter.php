<div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">Data Pasien RSUD Gunung Jati</h4>
                  
                </div>

                <div class="card-body">
                <a href="<?php echo base_url().'index.php/Admin/Admin/data_dokter_input'?>" class="btn btn-primary">Tambahkan Data</a><br><br>
                  <div class="table-responsive">
                    <table class="table">
                      <thead class=" text-primary">
                          <th>No.</th>
                          <th>Nomer Izin Praktek</th>
                          <th>Nama Dokter</th>
                          <th>Spesialis</th>
                          <th>Jenis Kelamin</th>
                          <th>Alumni</th>
                          <th>Alamat</th>
                          <th>No HP</th>
                          <th>Edit</th>
                          <th>Delete</th>
                      </thead>
                      <tfoot>
                          <th>No.</th>
                          <th>Nomer Izin Praktek</th>
                          <th>Nama Dokter</th>
                          <th>Spesialis</th>
                          <th>Jenis Kelamin</th>
                          <th>Alumni</th>
                          <th>Alamat</th>
                          <th>No HP</th>
                          <th>Edit</th>
                          <th>Delete</th>
                      </tfoot>
                      <tbody>
                        <?php 
                          $no = 1;
                          foreach ($tbl_dokter as $dokter) {
                          ?>
                          <tr>
                              <td><?php echo $no++ ?></td>
                              <td><?php echo $dokter->nmr_izinp ?></td>
                              <td><?php echo $dokter->nm_dokter ?></td>
                              <td><?php echo $dokter->spesialis ?></td>
                              <td><?php echo $dokter->j_kelamin ?></td>
                              <td><?php echo $dokter->alumni ?></td>
                              <td><?php echo $dokter->almt_dokter ?></td>
                              <td><?php echo $dokter->no_hp ?></td>
                              <td><a href="<?php echo base_url()."index.php/Admin/Admin/data_dokter_edit/$dokter->id_dokter"?>" 
                                  class="text-success"><i class="material-icons">edit</i></a></td>
                              <td><a href="<?php echo base_url()."index.php/Admin/Admin/data_dokter_delete/$dokter->id_dokter"?>" 
                                  class="text-danger"><i class="material-icons" onclick="return confirm('Apakah anda ingin menghapus data ini ?')">delete</i></a>
                              </td>
                            </tr>
                          <?php } ?>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            