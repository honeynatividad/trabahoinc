<section id="main-content">
    <section class="wrapper">            
              <!--overview start-->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> Campuses</h3>
		<ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="<?php echo base_url("/campus/all"); ?>">Member</a></li>
                    <li><i class="fa fa-laptop"></i>List</li>						  	
		</ol>
            </div>
	</div>
        <div class="row">
            <div class="col-lg-12">
                <?php if($this->session->success_msg): ?>
                <div class="alert alert-success fade in">
                    <p><?php echo $this->session->success_msg ?></p>
                </div>
                
                <?php endif; ?>
            </div>
        </div>         
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        List of Campus
                    </header>
                    <table class="table table-striped table-advance table-hover">
                        <tbody>
                            <tr>
                                <th>Code</th>
                                <th>Name</th>                                
                                <th>Action</th>
                            </tr>
                            <?php foreach($campuses as $campus): ?>
                            <tr>
                                <td><?php echo $campus['code'] ?> </td>
                                <td><?php echo $campus['name'] ?></td>                                
                                <td>
                                    <div class="btn-group">
                                        <a class="btn btn-primary" href="<?php echo base_url('campuses/view/'.$campus['id']); ?>"><i class="icon_zoom-out_alt"></i></a>
                                        <a class="btn btn-success" href="<?php echo base_url('campuses/edit/'.$campus['id']); ?>"><i class="icon_box-checked"></i></a>
                                        <a class="btn btn-danger" href="<?php echo base_url('campuses/delete/'.$campus['id']) ?>"><i class="icon_close_alt2"></i></a>
                                    </div>
                                </td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <div class="panel-body">
                    </div>
                </section>
            </div>
        </div>
    </section>
</section>
<?php unset($_SESSION['success_msg']); ?>