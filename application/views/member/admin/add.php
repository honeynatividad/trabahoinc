<section id="main-content">
    <section class="wrapper">            
              <!--overview start-->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> Member</h3>
		<ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="<?php echo base_url("/member/all"); ?>">Member</a></li>
                    <li><i class="fa fa-laptop"></i>Add</li>						  	
		</ol>
            </div>
	</div>
        <div class="row">
            <div class="col-lg-12">
                <?php if($success_msg): ?>
                <div class="alert alert-success fade in">
                    <p><?php echo $success_msg ?></p>
                </div>
                
                <?php endif; ?>
            </div>
        </div>      
        <div class="row">
            <div class="col-lg-10">
                <section class="panel">
                    <header class="panel-heading">
                        Member Form
                    </header>
                    <div class="panel-body">
                        <div class="form">
                            <form class="form-validate form-horizontal" id="feedback_form" action="" method="post">
                                <div class="col-lg-12">
                                    <h3>Personal Information</h3>
                                    <hr>
                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Member Type<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <select class="form-control input-lg m-bot15" name="member_type">                                            
                                                <option value=""></option>
                                                <option value="Regular">Regular</option>
                                                <option value="Affiliate">Affiliate</option>
                                                <option value="Honorary">Honorary</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">First Name <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="cname" name="first_name" minlength="2" type="text" required />
                                        </div>
                                    </div>
                                    <div id="checkName">
                                        <div class="form-group ">
                                            <label for="cname" class="control-label col-lg-2">Middle Name <span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="cname" name="middle_name" minlength="2" type="text" required />
                                            </div>
                                        </div>

                                        <div class="form-group ">
                                            <label for="cname" class="control-label col-lg-2">Last Name <span class="required">*</span></label>
                                            <div class="col-lg-10">
                                                <input class="form-control" id="lname" name="last_name" minlength="2" type="text" required />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Nick Name <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="cname" name="nick_name" minlength="2" type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Birthday <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control datepicker2" id="datepicker2" data-date-format="mm/dd/yyyy" name="birthday" minlength="3" type="text" required />
                                        </div>
                                        
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Nationality <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="nationality" name="nationality" minlength="2" type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Gender<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <select class="form-control input-lg m-bot15" name="gender">                                            
                                                <option value=""></option>
                                                <option value="male">Male</option>
                                                <option value="female">Female</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Contact Number <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="cname" name="contact_number" minlength="3" type="text" required />
                                        </div>
                                    </div>

                                    

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Email Address <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="cname" name="email_address" minlength="3" type="text" required />
                                        </div>
                                    </div>
                                    
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Facebook Name <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="cname" name="facebook_name" minlength="3" type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Youtube Name <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="youtube_name" name="youtube_name" minlength="3" type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Instagram Name <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="instagram_name" name="instagram_name" minlength="3" type="text" required />
                                        </div>
                                    </div>
                                    <hr>
                                    <h1>Education</h1>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Elementary<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="elementary" name="elementary" minlength="3" type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">High School<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="highschool" name="highschool" minlength="3" type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">College<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="college" name="college" minlength="3" type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Vocational<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="vocational" name="vocational" minlength="3" type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Post Graduate<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="post_graduate" name="post_graduate" minlength="3" type="text" required />
                                        </div>
                                    </div>

                                    <hr>
                                    <h1>Work Experience</h1>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Company Name<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="company_name" name="company_name" minlength="3" type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Location<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="location" name="location" minlength="3" type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Length of stay<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="length_of_stay" name="length_of_stay" type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Position<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="position" name="position" minlength="3" type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Skills<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="skills" name="skills" minlength="3" type="text" required />
                                        </div>
                                    </div>
                                    
                                </div>
                                
                                
                                <br>
                               
                                <div class="tags_clear"></div>
                                
                                
                                <div class="col-lg-12 ">
                                    <div class="form-group">
                                        <div class="col-lg-offset-4 col-lg-10">
                                            <input type="submit" id="submit" name="memberSubmit" class="btn btn-primary col-lg-4" value="ADD"/>
                                              
                                            <button class="btn btn-default col-lg-4" type="button">Cancel</button>
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
<script>
    $(document).ready(function(){
	$("#lname").click(function(){
            
        });
            
    });
</script>