<section id="main-content">
    <section class="wrapper">            
              <!--overview start-->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> Member</h3>
		<ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="<?php echo base_url("/members/all"); ?>">Member</a></li>
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
                        List of Member
                    </header>
                    <table class="table table-striped table-advance table-hover">
                        <tbody>
                            <tr>
                                <th>Full Name</th>
                                <th>Campus</th>
                                <th>Area</th>
                                <th>Action</th>
                            </tr>
                            <?php foreach($members as $member): ?>
                            <tr>
                                <td><?php echo $member['first_name']." ".$member['last_name'] ?> </td>
                                <td><?php echo $member['campus'] ?></td>
                                <td><?php echo $member['area'] ?></td>
                                <td>
                                    <div class="btn-group">
                                        <a class="btn btn-primary" href="<?php echo base_url('members/view/'.$member['member_id']); ?>"><i class="icon_zoom-out_alt"></i></a>
                                        
                                        <a class="btn btn-danger" href="<?php echo base_url('members/delete/'.$member['member_id']) ?>"><i class="icon_close_alt2"></i></a>
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