<section id="main-content">
    <section class="wrapper">            
              <!--overview start-->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> Campus</h3>
		<ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="<?php echo base_url("/campus/all"); ?>">Campus</a></li>
                    <li><i class="fa fa-laptop"></i>Add</li>						  	
		</ol>
            </div>
	</div>
              
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                    Form validations
                    </header>
                    <div class="panel-body">
                        <div class="form">
                            <form action="" method="post" class="form-validate form-horizontal">
                                <input type="hidden" value="<?php echo $campus['id'] ?>" name="id">
                                <div class="form-group">
                                    <label for="cname" class="control-label col-lg-2">Code<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" value="<?php echo $campus['code'] ?>" name="code" placeholder="CODE" required="" value="<?php echo !empty($user['name'])?$user['name']:''; ?>">
                                        <?php echo form_error('code','<span class="help-block">','</span>'); ?>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="cname" class="control-label col-lg-2">Campus Name <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" value="<?php echo $campus['name'] ?>" name="name" placeholder="Campus Name" required="" value="<?php echo !empty($user['email'])?$user['email']:''; ?>">
                                        <?php echo form_error('name','<span class="help-block">','</span>'); ?>
                                    </div>
                                </div>

                                

                                <div class="form-group">
                                    <div class="col-lg-2">
                                    </div>
                                    <div class="col-lg-10">
                                        <div class="col-lg-offset-2 col-lg-10">
                                            <input type="submit" name="campusSubmit" class="btn btn-primary" value="EDIT"/>
                                        </div>
                                    </div>
                                </div>


                            </form>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>
</section>