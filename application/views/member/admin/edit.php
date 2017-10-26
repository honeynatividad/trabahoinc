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
                <section class="panel">
                    <header class="panel-heading">
                        Member Form
                    </header>
                    <div class="panel-body">
                        
                <div class="form">
                    <form method="post" id="edit-member">
                        <h3>Personal Information</h3>
                        <input type="hidden" id="member_id" name="member_id" value="<?php echo $member_id ?>">
                        <hr>
                        <div class="form-group ">
                            <label for="cname" class="control-label col-lg-4">First Name <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control" id="first_name" name="first_name" minlength="2" type="text" value="<?php echo $members['first_name'] ?>" required />
                            </div>
                        </div>
                        <div id="checkName">
                            <div class="form-group ">
                                <label for="cname" class="control-label col-lg-4">Middle Name <span class="required">*</span></label>
                                <div class="col-lg-8">
                                    <input class="form-control" id="middle_name" name="middle_name" minlength="2" type="text" value="<?php echo $members['middle_name'] ?>" required />
                                </div>
                            </div>

                            <div class="form-group ">
                                <label for="cname" class="control-label col-lg-4">Last Name <span class="required">*</span></label>
                                <div class="col-lg-8">
                                    <input class="form-control" id="last_name" name="last_name" minlength="2" type="text" value="<?php echo $members['last_name'] ?>" required />
                                </div>
                            </div>
                        </div>

                        
                        <div class="form-group ">
                            <label for="cname" class="control-label col-lg-4">Contact Number <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control" id="contact_number" name="contact_number" minlength="3" value="<?php echo $members['contact_number'] ?>" type="text" required />
                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cname" class="control-label col-lg-4">Birthday <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control datepicker2" data-date-format="mm/dd/yyyy" id="birthday" name="birthday" minlength="3" value="<?php echo $members['birthday'] ?>" type="text" required />
                            </div>

                        </div>

                        <div class="form-group ">
                            <label for="cname" class="control-label col-lg-4">Email Address <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control" id="email_address" name="email_address" minlength="3" value="<?php echo $members['email_address'] ?>" type="text" required />
                            </div>
                        </div>
                        

                        <div class="form-group ">
                            <label for="cname" class="control-label col-lg-4">Facebook Name <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control" id="facebook_name" name="facebook_name" minlength="3" value="<?php echo $members['facebook_name'] ?>" type="text" required />
                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cname" class="control-label col-lg-4">Complete Home Address <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <textarea class="form-control" id="complete_home_address" name="complete_home_address"><?php echo $members['complete_home_address'] ?></textarea>

                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cname" class="control-label col-lg-4">Campus <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <select class="form-control input-lg m-bot15" id="campus" name="campus">
                                    <option value="<?php echo $members['campus'] ?>"><?php echo $members['campus'] ?></option>
                                    <?php foreach($campuses as $campus):?>

                                    <option value="<?php echo $campus['name'] ?>"><?php echo $campus['name'] ?></option>
                                    <?php endforeach; ?>
                                </select>

                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cemail" class="control-label col-lg-4">Area <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <select class="form-control input-lg m-bot15" id="area" name="area">                                            
                                    <option value="<?php echo $members['area'] ?>"><?php echo $members['area'] ?></option>
                                    <option value="España">España</option>
                                    <option value="Intramuros">Intramuros</option>
                                    <option value="Mendiola">Mendiola</option>
                                    <option value="Sta. Mesa">Sta. Mesa</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cemail" class="control-label col-lg-4">Year Level <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <select class="form-control input-lg m-bot15" id="year_level" name="year_level">                                            
                                    <option value="<?php echo $members['year_level'] ?>"><?php echo $members['year_level'] ?></option>
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
                            <label for="cemail" class="control-label col-lg-4">Graduating <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <select class="form-control input-lg m-bot15" id="graduating" name="graduating">                                            
                                    <option value="<?php echo $members['graduating'] ?>"><?php echo $members['graduating'] ?></option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                    <option value="Not applicable">Not Applicable if YP or Staff</option>


                                </select>
                            </div>
                        </div>

                        <h3>Ministry Information</h3>
                        <hr>
                        <?php 
                        $youth = $members['youth_services_you_attend'];
                        $youth = explode(',', $youth);
                        
                        ?>
                        <div class="form-group ">
                            <label for="cemail" class="control-label col-lg-4">Youth Service/s You regularly attend<span class="required">*</span></label>
                            <div class="col-lg-8">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="th-5pm" <?php echo ($youth[0]=='th-5pm' ? 'checked' : '');?> id="th-5pm" name="th_5pm">Thursday 5pm

                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="th-7pm" value="th-7pm" <?php echo ($youth[1]=='th-7pm' ? 'checked' : '');?> name="th_7pm">Thursday 7pm

                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="f-3pm" <?php echo ($youth[2]=='f-3pm' ? 'checked' : '');?> id="f-3pm" name="f_3pm">Friday 3pm

                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="f-5pm" <?php echo ($youth[3]=='f-5pm' ? 'checked' : '');?> id="f-5pm" name="f_5pm">Friday 5pm

                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="f-7pm" <?php echo ($youth[4]=='f-7pm' ? 'checked' : '');?> id="f-7pm" name="f_7pm">Friday 7pm

                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="service-other" <?php echo ($youth[5]=='service-other' ? 'checked' : '');?> id="service-other" name="service_other">Other

                                    </label>
                                </div>
                            </div>
                        </div>
                        <?php 
                       
                        $ministry = $members['ministry_involvement'];
                        $ministry = explode(',', $ministry);
                        
                        ?>
                        <div class="form-group ">
                            <label for="cemail" class="control-label col-lg-4">Ministry Involvement<span class="required">*</span></label>
                            <div class="col-lg-8">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="Admin Support" <?php echo ($ministry[0]=='Admin Support' ? 'checked' : '');?> id="ministry-admin" name="ministry_admin">Admin Support                                                  
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="Communication" <?php echo ($ministry[1]=='Communication' ? 'checked' : '');?> id="ministry-communication" name="ministry_communication">Communication
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="Kids" <?php echo ($ministry[2]=='Kids' ? 'checked' : '');?> id="ministry-kids" name="ministry_kids">Kids
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="Music" <?php echo ($youth[3]=='Music' ? 'checked' : '');?> id="ministry-music" name="ministry_music">Music
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="Prayer Ministry" <?php echo ($ministry[4]=='Prayer Ministry' ? 'checked' : '');?> id="ministry-prayer" name="ministry_prayer">Prayer Ministry
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="Production Design" <?php echo ($ministry[5]=='Production Design' ? 'checked' : '');?> id="ministry-production" name="ministry_production">Production Design
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="Technical and Stage Management" <?php echo ($ministry[6]=='Technical and Stage Management' ? 'checked' : '');?> id="ministry-technical" name="ministry_technical">Technical and Stage Management
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="Ushering" <?php echo ($ministry[7]=='Ushering' ? 'checked' : '');?> id="ministry-ushering" name="ministry_ushering">Ushering
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="None" <?php echo ($ministry[8]=='None' ? 'checked' : '');?> id="ministry-none" name="ministry_none">None
                                    </label>
                                </div>


                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cemail" class="control-label col-lg-4">Name of Your Leadership Group Leader <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control" id="name_leader" name="name_leader" minlength="3" value="<?php echo $members['name_of_your_leadership_group'] ?>" type="text" required />
                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cemail" class="control-label col-lg-4">One 2 one <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control datepicker" data-date-format="mm/yyyy" id="one_2_one" name="one_2_one" value="<?php echo $members['one_2_one'] ?>" minlength="3" type="text" required />
                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cemail" class="control-label col-lg-4">Victory Weekend <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control datepicker" data-date-format="mm/yyyy" id="victory_weekend" name="victory_weekend" value="<?php echo $members['victory_weekend'] ?>" minlength="3" type="text" required />
                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cemail" class="control-label col-lg-4">Water Baptism <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control datepicker" data-date-format="mm/yyyy" id="water_baptism" name="water_baptism" minlength="3" value="<?php echo $members['water_baptism'] ?>" type="text" required />
                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cemail" class="control-label col-lg-4">Making Disciples <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control datepicker" data-date-format="mm/yyyy" id="making_disciples" name="making_disciples" minlength="3" value="<?php echo $members['making_disciples'] ?>" type="text" required />
                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cemail" class="control-label col-lg-4">Church Community <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control datepicker" data-date-format="mm/yyyy" id="church_community" name="church_community" value="<?php echo $members['church_community'] ?>" minlength="3" type="text" required />
                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cemail" class="control-label col-lg-4">Foundation Class <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control datepicker" data-date-format="mm/yyyy" id="foundation_class" name="foundation_class" value="<?php echo $members['foundation_class'] ?>" minlength="3" type="text" required />
                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cemail" class="control-label col-lg-4">Empowering Leaders <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control datepicker" data-date-format="mm/yyyy" id="empowering_leaders" name="empowering_leaders" value="<?php echo $members['empowering_leaders'] ?>" minlength="3" type="text" required />
                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cemail" class="control-label col-lg-4">Leadership 113 <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <input class="form-control datepicker" data-date-format="mm/yyyy" id="leadership_113" name="leadership_113" minlength="3" value="<?php echo $members['leadership_113'] ?>" type="text" required />
                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="cname" class="control-label col-lg-4">Number of Victory Group/s You are Leading <span class="required">*</span></label>
                            <div class="col-lg-8">
                                <select class="form-control input-lg m-bot15" id="number_victory_groups" name="number_victory_groups">                                            
                                    <option value="<?php echo $members['how_many_victory_groups_you_are_leading'] ?>"><?php echo $members['how_many_victory_groups_you_are_leading'] ?></option>
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>

                                </select>

                            </div>
                        </div>

                        <br>
                        <hr>
                        <div class="tags_clear"></div>
                        <div class="row">

                            <button class="btn btn-default" type="button">Close</button>
                            <button class="btn btn-success" id="editPersonalInformation" >Save changes</button>
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
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script>
    $(document).ready(function(){
	$("#editPersonalInformation").click(function(){
            //alert("TEST");
            var member_id = $("#member_id").val();
            //alert(member_id);
            var first_name = $("#first_name").val();
            var last_name = $("#last_name").val();
            var middle_name = $("#middle_name").val();
            var contact_number = $("#contact_number").val();
            var birthday = $("#birthday").val();
            var email_address = $("#email_address").val();
            var facebook_name = $("#facebook_name").val();
            var complete_home_address = $("#complete_home_address").val();
            var campus = $("#campus").val();
            var area = $("#area").val();
            var year_level = $("#year_level").val();
            var graduating = $("#graduating").val();
            var th_5pm = $("#th-5pm").val();
            var th_7pm = $("#th-7pm").val();
            var f_3pm = $("#f_3pm").val();
            var f_5pm = $("#f_5pm").val();
            var f_7pm = $("#f_7pm").val();
            var service_other = $("#service-other").val();
            var ministry_admin = $("ministry-admin").val();
            var ministry_communication = $("#ministry-communication").val();
            var ministry_kids = $("#ministry-kids").val();
            var ministry_prayer = $("#ministry-prayer").val();
            var ministry_production = $("#ministry-production").val();
            var ministry_technical = $("#ministry-technical").val();
            var ministry_ushering = $("#ministry-ushering").val();
            var ministry_none = $("#ministry-none").val();
            var name_leader = $("#name_leader").val();
            var one_2_one = $("#one_2_one").val();
            var victory_weekend = $("#victory_weekend").val();
            var water_baptism = $("#water_baptism").val();
            var making_disciples = $("#making_disciples").val();
            var church_community = $("#church_community").val();
            var foundation_class = $("#foundation_class").val();
            var empowering_leaders = $("#empowering_leaders").val();
            var leadership_113 = $("#leadership_113").val();
            var number_victory_groups = $("#number_victory_groups").val();
            
            $.ajax({
                type: 'post',
                url: '<?php echo base_url("members/edit/");?>'+member_id,
                data: {
                    member_id:member_id,
                    first_name:first_name,
                    last_name:last_name,
                    middle_name:middle_name,
                    contact_number:contact_number,
                    birthday:birthday,
                    email_address: email_address,
                    facebook_name:facebook_name,
                    complete_home_address:complete_home_address,
                    campus:campus,
                    area:area,
                    year_level:year_level,
                    graduating:graduating,
                    th_5pm:th_5pm,
                    th_7pm:th_7pm,
                    f_3pm:f_3pm,
                    f_5pm:f_5pm,
                    f_7pm:f_7pm,
                    service_other:service_other,
                    ministry_admin:ministry_admin,
                    ministry_communication:ministry_communication,
                    ministry_kids:ministry_kids,
                    ministry_prayer:ministry_prayer,
                    ministry_production:ministry_production,
                    ministry_technical:ministry_technical,
                    ministry_ushering:ministry_ushering,
                    ministry_none:ministry_none,
                    name_leader:name_leader,
                    one_2_one:one_2_one,
                    victory_weekend:victory_weekend,
                    water_baptism:water_baptism,
                    making_disciples:making_disciples,
                    church_community:church_community,
                    foundation_class:foundation_class,
                    empowering_leaders:empowering_leaders,
                    leadership_113:leadership_113,
                    number_victory_groups:number_victory_groups
                    
         
                },
                success: function(data) { 
                    //alert("response");
                    window.location.href = "<?php echo base_url('members/view/') ?>"+member_id;
                    },
                error: function(xhr, ajaxOptions, thrownerror) { }
                
            });

        });
            
    });
</script>