<section id="main-content">
    <section class="wrapper">            
              <!--overview start-->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> Intern Profile</h3>
		<ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="<?php echo base_url("/member/all"); ?>">Member</a></li>
                    <li><i class="fa fa-laptop"></i>Edit</li>						  	
		</ol>
            </div>
	</div>
              
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Intern Profile Form
                    </header>
                    <div class="panel-body">
                        <div class="form">
                            <form class="form-validate form-horizontal" id="feedback_form" action="" method="post">
                                <input type="hidden" name="intern_id" value="<?php echo $intern_id ?>">
                                <input type="hidden" name="member_id" value="<?php echo $member_id ?>">
                                <input type="hidden" name="victory_group_id" value="<?php echo $victory_group_id ?>">
                                <div class="col-lg-12">
                                    <p><i>Must be DONE with Victory Weekend, co-leading with Victory Group Leader and has F.A.I.T.H</i></p>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cname" class="control-label col-lg-2">Full Name <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" id="full_name" value="<?php echo $intern['intern_name'] ?>" name="full_name" minlength="5" required />
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cname" class="control-label col-lg-2">Contact Number <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" id="contact_number" value="<?php echo $intern['contact_number'] ?>" name="contact_number" minlength="5" required />
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cname" class="control-label col-lg-2">Campus <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <select class="form-control input-lg m-bot15" name="campus">
                                            <option value="<?php echo $intern['campus'] ?>"><?php echo $intern['campus'] ?></option>
                                            <?php foreach($campuses as $campus):?>
                                            
                                            <option value="<?php echo $campus['name'] ?>"><?php echo $campus['name'] ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                        
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Year Level <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <select class="form-control input-lg m-bot15" name="year_level">                                            
                                            <option value="<?php echo $intern['year_level'] ?>"><?php echo $intern['year_level'] ?></option>
                                            <option value="Junior HS">Junior HS(Grade 7-10)</option>
                                            <option value="Senior HS">Senior HS(Grade 11-12)</option>
                                            <option value="First year">First Year</option>
                                            <option value="Second Year">Second Year</option>
                                            <option value="Third Year">Third Year</option>
                                            <option value="Fourth Year">Fourth Year</option>
                                            <option value="Fifth Year">Fifth Year</option>
                                            
                                            <option value="Other">Other</option>
                                                                           
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Graduating <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <select class="form-control input-lg m-bot15" name="graduating">                                            
                                            <option value="<?php echo $intern['graduating'] ?>"><?php echo $intern['graduating'] ?></option>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                            
                                            
                                                                           
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">One 2 One<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="<?php echo $intern['one_2_one'] ?>" <?php echo ($intern['one_2_one']==1 ? 'checked' : '');?> name="one_2_one">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Victory Weekend<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="<?php echo $intern['victory_weekend'] ?>" <?php echo ($intern['victory_weekend']==1 ? 'checked' : '');?> name="victory_weekend">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Water Baptism<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="<?php echo $intern['water_baptism'] ?>" <?php echo ($intern['water_baptism']==1 ? 'checked' : '');?> name="water_baptism">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Making Disciples<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="<?php echo $intern['making_disciples'] ?>" <?php echo ($intern['making_disciples']==1 ? 'checked' : '');?> name="making_disciples">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Church Community<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="<?php echo $intern['church_community'] ?>" <?php echo ($intern['church_community']==1 ? 'checked' : '');?> name="church_community">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Foundation Class<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="<?php echo $intern['foundation_class'] ?>" <?php echo ($intern['foundation_class']==1 ? 'checked' : '');?> name="foundation_class">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Empowering Leaders<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="<?php echo $intern['empowering_leaders'] ?>" <?php echo ($intern['empowering_leaders']==1 ? 'checked' : '');?> name="empowering_leaders">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Do you have another intern? <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <select class="form-control input-lg m-bot15" name="do_you_have_another_intern">
                                            <option value="<?php echo $intern['do_you_have_another_intern'] ?>"></option>
                                            <option value="Yes">Yes</option>
                                            <option value="No">No</option>
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <input type="submit" id="submit" name="memberSubmit" class="btn btn-primary" value="SAVE"/>
                                              
                                        <button class="btn btn-default" type="button">Cancel</button>
                                    </div>
                                </div>
                                
                            </form>
                    </div>
                </section>
            </div>
        </div>
    </section>
</section>