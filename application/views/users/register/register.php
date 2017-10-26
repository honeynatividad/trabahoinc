<bod>
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    Register User
                </header>
                <div class="panel-body">
                    <div class="form">
                        <form action="" method="post" class="form-validate form-horizontal">
                            <div class="form-group">
                                <label for="cname" class="control-label col-lg-2">Full Name <span class="required">*</span></label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="name" placeholder="Name" required="" value="<?php echo !empty($user['name'])?$user['name']:''; ?>">
                                    <?php echo form_error('name','<span class="help-block">','</span>'); ?>
                                </div>
                            </div>
                        
                            <div class="form-group">
                                <label for="cname" class="control-label col-lg-2">Email <span class="required">*</span></label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="email" placeholder="Email" required="" value="<?php echo !empty($user['email'])?$user['email']:''; ?>">
                                    <?php echo form_error('email','<span class="help-block">','</span>'); ?>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="cname" class="control-label col-lg-2">Phone <span class="required">*</span></label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" name="phone" placeholder="Phone" value="<?php echo !empty($user['phone'])?$user['phone']:''; ?>">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="cname" class="control-label col-lg-2">Password <span class="required">*</span></label>
                                <div class="col-lg-10">
                                    <input type="password" class="form-control" name="password" placeholder="Password" required="">
                                    <?php echo form_error('password','<span class="help-block">','</span>'); ?>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label for="cname" class="control-label col-lg-2">Confirm Password <span class="required">*</span></label>
                                <div class="col-lg-10">
                                    <input type="password" class="form-control" name="conf_password" placeholder="Confirm password" required="">
                                    <?php echo form_error('conf_password','<span class="help-block">','</span>'); ?>
                                </div>
                            </div>
                            
                            
                            <div class="form-group">
                                <label for="cname" class="control-label col-lg-2">Gender <span class="required">*</span></label>
                                <div class="col-lg-10">
                                    <?php
                                    if(!empty($user['gender']) && $user['gender'] == 'Female'){
                                        $fcheck = 'checked="checked"';
                                        $mcheck = '';
                                    }else{
                                        $mcheck = 'checked="checked"';
                                        $fcheck = '';
                                    }
                                    ?>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="gender" value="Male" <?php echo $mcheck; ?>>
                                            Male
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="gender" value="Female" <?php echo $fcheck; ?>>
                                            Female
                                        </label>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="col-lg-2">
                                </div>
                                <div class="col-lg-10">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <input type="submit" name="regisSubmit" class="btn btn-primary" value="Register"/>
                                    </div>
                                </div>
                            </div>
                                      
                            
                        </form>
                    </div>

                </div>
            </section>
        </div>
    </div>