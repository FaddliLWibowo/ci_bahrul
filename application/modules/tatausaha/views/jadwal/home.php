			<div id="breadcrumb">
				<a href="<?php echo base_url(); ?>dashboard" title="Go to Dashboard" class="tip-bottom"><i class="icon-home"></i> Dashboard</a>
				<a href="<?php echo base_url(); ?>jadwal" class="current">Jadwal</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<h5>Data Penjadwalan</h5>
								<div class="buttons">
									<a href="<?php echo base_url(); ?>tatausaha/jadwal/add" class="btn btn-primary"><i class="icon-plus icon-white"></i> Tambah Jadwal</a>
								</div>
							</div>
				<section>			
  					<table class="table ">
    					<thead>
      						<tr>
        						<th>No.</th>
        						<th>Hari</th>
        						<th>Jam</th>
       						 	<th>NIP</th>
        						<th>Nama Guru</th>
								<th>Mata Pelajaran</th>
								<th>Kelas</th>
								<th>Aksi</th>
      						</tr>
    					</thead>
    					<tbody>
							<?php
								$no=$tot+1;
								foreach($jadwal->result_array() as $f)
								{
							?>
    						<tr>
       							<td ><?php echo $no; ?></td>
       							<td ><?php echo $f['nama_hari']; ?></td>
       							<td ><?php echo $f['jam']; ?></td>
        						<td ><?php echo $f['nip']; ?></td>
        						<td ><?php echo $f['nama']; ?></td>
        						<td ><?php echo $f['nama_pelajaran']; ?></td>
        						<td ><?php echo $f['nama_kelas']; ?></td>
	    							<td>
	        							<div class="btn-group">
	          								<a class="btn btn-small small-box" href="<?php echo base_url(); ?>tatausaha/jadwal/detail/<?php echo $f['id_jadwal']; ?>"><i class="icon-ok-circle"></i> Lihat Detail</a>
	          								<a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
	          									<ul class="dropdown-menu">
	            									<li><a href="<?php echo base_url(); ?>tatausaha/jadwal/edit/<?php echo $f['id_jadwal']; ?>" class="small-box"><i class="icon-pencil"></i> Edit Data</a></li>
	            									<li><a href="<?php echo base_url(); ?>tatausaha/jadwal/delete/<?php echo $f['id_jadwal']; ?>" onClick="return confirm('Anda yakin..???');"><i class="icon-trash"></i> Hapus Data</a></li>
	          									</ul>
	        							</div><!-- /btn-group -->
									</td>
    						</tr>
							<?php
	 							$no++;
	 							}
	 						?>
						</tbody>
					</table>  
							<div class="pagination  pagination-centered">
								<ul>
									<?php
										echo $paginator;
									?>
								</ul>
							</div>
				</section>
				</div>
			</div>
		</div>
	</div>
				<div class="row-fluid">
					<div id="footer" class="span12">
						<p><?php echo $GLOBALS['site_footer']; ?></p>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
