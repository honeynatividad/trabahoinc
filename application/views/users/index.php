<section id="main-content">
    <section class="wrapper">            
              <!--overview start-->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> Account</h3>
		
            </div>
	</div>
        
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Account Details
                    </header>
                    <div class="panel-body">
                        <?php 
                        if($this->session->userdata('success_msg')){
                            echo $this->session->userdata('success_msg');
                        }
                        ?>
                        <table class="table table-striped table-advance table-hover">
                            <tr>
                                <td>Name</td>
                                <td><?php echo $user['name'] ?></td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td><?php echo $user['email'] ?></td>
                            </tr>
                            <tr>
                                <td>Gender</td>
                                <td><?php echo $user['gender'] ?></td>
                            </tr>
                            <tr>
                                <td>Phone</td>
                                <td><?php echo $user['phone'] ?></td>
                            </tr>
                            
                        </table>
                    </div>
                </section>
            </div>
        </div>
    </section>
</section>
<?php unset($_SESSION['success_msg']); ?>