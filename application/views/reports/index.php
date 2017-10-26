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
                    
                    <div class="panel-body">
                        <?php 
                        echo '<pre>';
                        print_r($count[0]['total']);
                        echo '</pre>';
                        
                        ?>
                    </div>
                </section>
            </div>
        </div>
    </section>
</section>
<?php unset($_SESSION['success_msg']); ?>