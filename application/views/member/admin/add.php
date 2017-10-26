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
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        Member Form
                    </header>
                    <div class="panel-body">
                        <div class="form">
                            <form class="form-validate form-horizontal" id="feedback_form" action="" method="post">
                                <div class="col-lg-6">
                                    <h3>Personal Information</h3>
                                    <hr>
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
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Contact Number <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="cname" name="contact_number" minlength="3" type="text" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Birthday <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control datepicker2" id="datepicker2" data-date-format="mm/dd/yyyy" name="birthday" minlength="3" type="text" required />
                                        </div>
                                        
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Email Address <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="cname" name="email_address" minlength="3" type="text" required />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="cname" class="control-label col-lg-2">Password <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input type="password" class="form-control" name="password" placeholder="Password" required="">
                                            <?php echo form_error('password','<span class="help-block">','</span>'); ?>
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Facebook Name <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="cname" name="facebook_name" minlength="3" type="text" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Complete Home Address <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <textarea class="form-control" id="cname" name="complete_home_address"></textarea>

                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Campus <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <select class="form-control input-lg m-bot15" name="campus">
                                                <option value=""></option>
                                                <?php foreach($campuses as $campus):?>

                                                <option value="<?php echo $campus['name'] ?>"><?php echo $campus['name'] ?></option>
                                                <?php endforeach; ?>
                                            </select>

                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Area <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <select class="form-control input-lg m-bot15" name="area">                                            
                                                <option value=""></option>
                                                <option value="España">España</option>
                                                <option value="Intramuros">Intramuros</option>
                                                <option value="Mendiola">Mendiola</option>
                                                <option value="Sta. Mesa">Sta. Mesa</option>                                            
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Year Level <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <select class="form-control input-lg m-bot15" name="year_level">                                            
                                                <option value=""></option>
                                                <option value="Junior HS">Junior HS(Grade 7-10)</option>
                                                <option value="Senior HS">Senior HS(Grade 11-12)</option>
                                                <option value="First year">First Year</option>
                                                <option value="Second Year">Second Year</option>
                                                <option value="Third Year">Third Year</option>
                                                <option value="Fourth Year">Fourth Year</option>
                                                <option value="Fifth Year">Fifth Year</option>
                                                <option value="YP Volunteer">YP Volunteer</option>
                                                <option value="Staff">Staff</option>
                                                <option value="Other">Other</option>

                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Graduating <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <select class="form-control input-lg m-bot15" name="graduating">                                            
                                                <option value=""></option>
                                                <option value="Yes">Yes</option>
                                                <option value="No">No</option>
                                                <option value="Not applicable">Not Applicable if YP or Staff</option>


                                            </select>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-6 border-content">
                                    
                                    <h3>Ministry Information</h3>
                                    <hr>
                                    
                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Youth Service/s You regularly attend<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="th-5pm" name="th-5pm">Thursday 5pm

                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="th-7pm" name="th-7pm">Thursday 7pm

                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="f-3pm" name="f-3pm">Friday 3pm

                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="f-5pm" name="f-5pm">Friday 5pm

                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="f-7pm" name="f-7pm">Friday 7pm

                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="service-other" name="service-other">Other

                                                </label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Ministry Involvement<span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="Admin Support" name="ministry-admin">Admin Support                                                  
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="Communication" name="ministry-communication">Communication
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="Kids" name="ministry-kids">Kids
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="Music" name="ministry-music">Music
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="Prayer Ministry" name="ministry-prayer">Prayer Ministry
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="Production Design" name="ministry-production">Production Design
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="Technical and Stage Management" name="ministry-technical">Technical and Stage Management
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="Ushering" name="ministry-ushering">Ushering
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" value="None" name="ministry-none">None
                                                </label>
                                            </div>
                                            

                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Name of Your Leadership Group Leader <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control" id="cname" name="name_leader" minlength="3" type="text" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">One 2 one <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control datepicker" id="datepicker" data-date-format="mm/yyyy" name="one_2_one" minlength="3" type="text" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Victory Weekend <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control datepicker" id="datepicker" data-date-format="mm/yyyy" id="cname" name="victory_weekend" minlength="3" type="text" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Water Baptism <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control datepicker" id="datepicker" data-date-format="mm/yyyy" name="water_baptism" minlength="3" type="text" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Making Disciples <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control datepicker" id="datepicker" data-date-format="mm/yyyy" name="making_disciples" minlength="3" type="text" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Church Community <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control datepicker" id="datepicker" data-date-format="mm/yyyy" name="church_community" minlength="3" type="text" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Foundation Class <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control datepicker" id="datepicker" data-date-format="mm/yyyy" name="foundation_class" minlength="3" type="text" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Empowering Leaders <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control datepicker" id="datepicker" data-date-format="mm/yyyy" name="empowering_leaders" minlength="3" type="text" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cemail" class="control-label col-lg-2">Leadership 113 <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control datepicker" id="datepicker" data-date-format="mm/yyyy" name="leadership_113" minlength="3" type="text" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-2">Number of Victory Group/s You are Leading <span class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <select class="form-control input-lg m-bot15" name="number_victory_groups">                                            
                                                <option value="0">0</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                
                                            </select>

                                        </div>
                                    </div>
                                </div>
                                <br>
                                <hr>
                                <div class="tags_clear"></div>
                                <div class="row">
                                   
                                    <br>
                                </div>
                                
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
                        <p><i>If you are leading a Victory Group, you will be redirected to Victory Group Information.</i></p>
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