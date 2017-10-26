<body class="login-img3-body">
<div class="container">

      <form class="login-form" action="" method="post">
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
         
            
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_profile"></i></span>
                <input type="text" class="form-control" placeholder="email" name="email" autofocus>
              
                <?php echo form_error('email','<span class="help-block">','</span>'); ?>
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="password" class="form-control" name ="password" placeholder="Password">
                
                <?php echo form_error('password','<span class="help-block">','</span>'); ?>
            </div>
            <label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right"> <a href="#"> Forgot Password?</a></span>
            </label>
            
            <input type="submit" name="loginSubmit" class="btn btn-primary btn-lg btn-block" value="Submit"/>
            
            
            <a href="<?php echo base_url('members/add') ?>" class="btn btn-info btn-lg btn-block" type="submit">Signup</a>
        </div>
      </form>
    

    </div>