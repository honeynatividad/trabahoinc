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
                <section class="panel">
                   
                    <header class="panel-heading tab-bg-primary">
                        <ul class="nav nav-tabs">
                            <li  class="active">
                                <a data-toggle="tab" href="#home-2">
                                    Profile
                                </a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#about-2">
                                    
                                    Victory Group Profile
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo base_url('members/edit/'.$member_id) ?>">EDIT</a>
                            </li>
                            
                        </ul>
                    </header>
                    <div class="panel-body">
                        <div class="tab-content">
                            <div id="home-2" class="tab-pane  active">
                                <a href="<?php echo base_url('members/edit/'.$member_id) ?>" class="btn btn-success">
                                  EDIT
                                </a>
                                <a href="<?php echo base_url('members/add/') ?>" class="btn btn-success">
                                  ADD 
                                </a>
                                
                                <table class="table">
                                    
                                    <tbody>
                                       
                                        <tr>
                                            <td>First Name</td>
                                            <td><b><?php echo $members['first_name'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Middle Name</td>
                                            <td><b><?php echo $members['middle_name'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Last Name</td>
                                            <td><b><?php echo $members['last_name'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Contact Number</td>
                                            <td><b><?php echo $members['contact_number'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Birthday</td>
                                            <td><b><?php echo $members['birthday'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Email Address</td>
                                            <td><b><?php echo $members['email_address'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Facebook Name</td>
                                            <td><b><?php echo $members['facebook_name'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Complete Home Address</td>
                                            <td><b><?php echo $members['complete_home_address'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Campus</td>
                                            <td><b><?php echo $members['campus'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Area</td>
                                            <td><b><?php echo $members['area'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Year Level</td>
                                            <td><b><?php echo $members['year_level'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Graduating</td>
                                            <td><b><?php echo $members['graduating'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Youth Services You Attend</td>
                                            <td><b><?php echo $members['youth_services_you_attend'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Ministry Involvement</td>
                                            <td><b><?php echo $members['ministry_involvement'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Name of your leadership group</td>
                                            <td><b><?php echo $members['name_of_your_leadership_group'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>One 2 One</td>
                                            <td><b><?php echo $members['one_2_one'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Victory Weekend</td>
                                            <td><b><?php echo $members['victory_weekend'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Making Disciples</td>
                                            <td><b><?php echo $members['making_disciples'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Church Community</td>
                                            <td><b><?php echo $members['church_community'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Foundation Class</td>
                                            <td><b><?php echo $members['foundation_class'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Empowering Leaders</td>
                                            <td><b><?php echo $members['empowering_leaders'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>Leadership 113</td>
                                            <td><b><?php echo $members['leadership_113'] ?></b></td>
                                        </tr>
                                        <tr>
                                            <td>How many victory groups you are leading</td>
                                            <td><b><?php echo $members['how_many_victory_groups_you_are_leading'] ?></b></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div id="about-2" class="tab-pane">
                                <?php if($victory_groups): ?>
                                
                                <?php foreach($victory_groups as $victory_group): ?>
                                <div class="col-lg-10">
                                    <table class="table">
                                        <a class="btn btn-warning" data-toggle="modal" href="<?php echo base_url('victory_groups/edit/'.$victory_group->victory_group_id) ?>">
                                        Edit
                                        </a>
                                        <a class="btn btn-warning" href="<?php echo base_url('victory_groups/add/'.$member_id) ?>">
                                        ADD Victory Group
                                        </a>
                                        <h3>Victory Group Information</h3>
                                        
                                        <tbody>
                                            <tr>
                                                <td>Campus</td>
                                                <td><?php echo $victory_group->campus ?></td>
                                            </tr>
                                            <tr>
                                                <td>When did you jumpstart your Victory Group?</td>
                                                <td><?php echo $victory_group->when_jumpstart ?></td>
                                            </tr>
                                            <tr>
                                                <td>How many times did you meet for the past 3 months?</td>
                                                <td><?php echo $victory_group->how_many_times ?></td>
                                            </tr>
                                            <tr>
                                                <td>How many members were connected from Outreach Month</td>
                                                <td><?php echo $victory_group->member_from_outreach ?></td>
                                            </tr>
                                            <tr>
                                                <td>Demographics</td>
                                                <td><?php echo $victory_group->demographic ?></td>
                                            </tr>
                                            <tr>
                                                <td>Number of Victory Group Members</td>
                                                <td><?php echo $victory_group->number_of_victory_group_member ?></td>
                                            </tr>
                                            <tr>
                                                <td>Schedule</td>
                                                <td><?php echo $victory_group->schedule ?></td>
                                            </tr>
                                            <tr>
                                                <td><b>Victory Group Members Discipleship Journey</b></td>
                                            </tr>
                                            <tr>
                                                <td>One 2 One</td>
                                                <td><?php echo $victory_group->one_2_one ?></td>
                                            </tr>
                                            <tr>
                                                <td>Victory Weekend</td>
                                                <td><?php echo $victory_group->victory_weekend ?></td>
                                            </tr>
                                            <tr>
                                                <td>Water Baptism</td>
                                                <td><?php echo $victory_group->water_baptism ?></td>
                                            </tr>
                                            <tr>
                                                <td>Making Disciples</td>
                                                <td><?php echo $victory_group->making_disciples ?></td>
                                            </tr>
                                            <tr>
                                                <td>Church Community</td>
                                                <td><?php echo $victory_group->church_community ?></td>
                                            </tr>
                                            <tr>
                                                <td>Foundation Class</td>
                                                <td><?php echo $victory_group->foundation_class ?></td>
                                            </tr>
                                            <tr>
                                                <td>Empowering Leaders</td>
                                                <td><?php echo $victory_group->empowering_leaders ?></td>
                                            </tr>
                                            <tr>
                                                <td>Leadership 113</td>
                                                <td><?php echo $victory_group->leadership_113 ?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="col-lg-10">
                                    <?php if($interns): ?>
                                    <?php foreach($interns as $intern): ?>
                                    <?php if($intern->victory_group_id==$victory_group->victory_group_id): ?>
                                    <a href="<?php echo base_url('interns/edit/'.$intern->intern_id) ?>" class="btn btn-success">
                                        EDIT
                                    </a>
                                    <h3>Intern Profile</h3>
                                    <table class="table-inbox border-content">
                                        <tbody>
                                            <tr>
                                                <td>Intern Name</td>
                                                <td><?php echo $intern->intern_name ?></td>
                                            </tr>
                                            <tr>
                                                <td>Contact Number</td>
                                                <td><?php echo $intern->contact_number ?></td>
                                            </tr>
                                            <tr>
                                                <td>Campus</td>
                                                <td><?php echo $intern->campus ?></td>
                                            </tr>
                                            <tr>
                                                <td>Year Level</td>
                                                <td><?php echo $intern->year_level ?></td>
                                            </tr>
                                            <tr>
                                                <td>Graduating</td>
                                                <td><?php echo $intern->graduating ?></td>
                                            </tr>
                                            <tr>
                                                <td>One 2 One</td>
                                                <td>
                                                    <?php 
                                                    if($intern->one_2_one==1){
                                                        echo 'Yes';
                                                    }else{
                                                        echo 'No';
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Victory Weekend</td>
                                                <td>
                                                    <?php 
                                                    if($intern->victory_weekend==1){
                                                        echo 'Yes';
                                                    }else{
                                                        echo 'No';
                                                    }?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Water Baptism</td>
                                                <td>
                                                    <?php 
                                                    if($intern->water_baptism==1){
                                                        echo 'Yes';
                                                    }else{
                                                        echo 'No';
                                                    }                                                    
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Making Disciples</td>
                                                <td>
                                                    <?php
                                                    if($intern->making_disciples==1){
                                                        echo 'Yes';
                                                    }else{
                                                        echo 'No';
                                                    } ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Church Community</td>
                                                <td>
                                                    <?php
                                                    if($intern->church_community==1){
                                                        echo 'Yes';
                                                    }else{
                                                        echo 'No';
                                                    } ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Foundation Class</td>
                                                <td>
                                                    <?php
                                                    if($intern->foundation_class==1){
                                                        echo 'Yes';
                                                    }else{
                                                        echo 'No';
                                                    }
                                                     ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Empowering Leaders</td>
                                                <td>
                                                    <?php 
                                                    if($intern->empowering_leaders==1){
                                                        echo 'Yes';
                                                    }else{
                                                        echo 'No';
                                                    }
                                                    ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Leadership 113</td>
                                                <td>
                                                    <?php
                                                    if($intern->leadership_113==1){
                                                        echo 'Yes';
                                                    }else{
                                                        echo 'No';
                                                    } ?>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <?php endif; ?>
                                    <?php endforeach; ?>
                                    <?php else: ?>
                                    <a class="btn btn-warning" href="<?php echo base_url('interns/add/'.$member_id.'/'.$victory_group->victory_group_id) ?>">
                                            ADD Intern
                                    </a>
                                    <?php endif; ?>    
                                </div>
                                
                                <?php endforeach; ?>
                                <?php else: ?>
                                <a class="btn btn-warning" href="<?php echo base_url('victory_groups/add/'.$member_id) ?>">
                                        ADD Victory Group
                                        </a>
                                <?php endif; ?>
                            </div>
                           
                        </div>
                     </div>
                </section>
            </div>
        </div>
    </section>
</section>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">EDIT</h4>
            </div>
            <div class="modal-body">
                <form class="form-validate form-horizontal" id="feedback_form" action="" method="post">
                    
                    <input type="hidden" name="member_id" value="<?php echo $member_id ?>">
                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">Campus <span class="required">*</span></label>
                        <div class="col-lg-8">
                            <select class="form-control input-lg m-bot15" name="campus">
                                <option value=""></option>
                                <?php foreach($campuses as $campus):?>

                                <option value="<?php echo $campus['name'] ?>"><?php echo $campus['name'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">When did you jumpstart your victory group <span class="required">*</span></label>
                        <div class="col-lg-8">
                            <input class="form-control datepicker" id="datepicker" data-date-format="mm/yyyy" name="when_jumpstart" minlength="3" type="text" required />
                                            
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">How many times did you meet for the past 3 months <span class="required">*</span></label>
                        <div class="col-lg-8">
                            <select class="form-control input-lg m-bot15" name="how_many_times">
                                <option value=""></option>
                                <option value="1-3 times">1-3 times</option>
                                <option value="4-6 times">4-6 times</option>
                                <option value="7-9 times">7-9 times</option>
                                <option value="more than 9 times">More than 9 times</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">Demographic <span class="required">*</span></label>
                        <div class="col-lg-8">
                            <select class="form-control input-lg m-bot15" name="demographic">
                                <option value=""></option>
                                <option value="High School">High School</option>
                                <option value="Junior High (Grade 7-10)">Junior High (Grade 7-10)</option>
                                <option value="Senior High (Grade 11-12)">Senior High (Grade 11-12)</option>                                                
                                <option value="College">College</option>
                                <option value="Mixed">Mixed</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">Number of Victory Group Members <span class="required">*</span></label>
                        <div class="col-lg-8">
                            <select class="form-control input-lg m-bot15" name="number_victory_group_member">                                            
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                            </select>

                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">How many members were connected from Outreach Month <span class="required">*</span></label>
                        <div class="col-lg-8">
                            <select class="form-control input-lg m-bot15" name="member_from_outreach">                                            
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                            </select>

                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">Schedule <span class="required">*</span></label>

                        <div class="col-lg-8">
                            <input class="form-control" id="cname" name="schedule" minlength="5" type="text" required />
                                        </div>
                                        <label for="cname" class="control-label col-lg-4">Day / Time / Location (e.g Monday / 3pm / KFC)<span class="required">*</span></label>

                    </div>
                    
                                
                                
                    
                    <div>
                        <h3>Victory Group Members Discipleship Journey</h3>
                    </div>
                    <div>
                        <p><i>Input total number of members who COMPLETED each discipleship milestone</i></p>
                    </div>
                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">One 2 One <span class="required">*</span></label>
                        <div class="col-lg-8">
                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" name="one_2_one" minlength="5" required />
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">Victory Weekend <span class="required">*</span></label>
                        <div class="col-lg-8">
                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" name="victory_weekend" minlength="5" required />
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">Water Baptism <span class="required">*</span></label>
                        <div class="col-lg-8">
                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" name="water_baptism" minlength="5" required />
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">Making Disciples<span class="required">*</span></label>
                        <div class="col-lg-8">
                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" name="making_disciples" minlength="5" required />
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">Church Community <span class="required">*</span></label>
                        <div class="col-lg-8">
                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" name="church_community" minlength="5" required />
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">Foundation Class<span class="required">*</span></label>
                        <div class="col-lg-8">
                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" name="foundation_class" minlength="5" required />
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">Empowering Leaders<span class="required">*</span></label>
                        <div class="col-lg-8">
                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" name="empowering_leaders" minlength="5" required />
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">Leadership 113<span class="required">*</span></label>
                        <div class="col-lg-8">
                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" name="leadership_113" minlength="5" required />
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="cname" class="control-label col-lg-4">Do you have an intern?<span class="required">*</span></label>
                        <div class="col-lg-8">
                                            
                            <input type="radio" name="intern" value="1" <?php echo  set_radio('myradio', '1', TRUE); ?> />Yes
                            <br>
                            <input type="radio" name="intern" value="2" <?php echo  set_radio('myradio', '2'); ?> />No
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
            <div class="modal-footer">
                <button class="btn btn-danger" type="button"> Ok</button>
            </div>
        </div>
    </div>
</div>
<!-- modal -->

<!-- Modal -->

<!-- modal -->


<!-- Modal -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Edit</h4>
            </div>
            <div class="modal-body">
                <div class="form">
                    <form class="form-validate form-horizontal" id="feedback_form" action="" method="post">
                        <input type="hidden" name="member_id" value="<?php echo $member_id ?>">
                        <input type="hidden" name="victory_group_id" value="<?php echo $victory_group_id ?>">
                        <div class="col-lg-12">
                            <p><i>Must be DONE with Victory Weekend, co-leading with Victory Group Leader and has F.A.I.T.H</i></p>
                        </div>
                                
                        <div class="form-group ">
                            <label for="cname" class="control-label col-lg-2">Full Name <span class="required">*</span></label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" name="full_name" minlength="5" required />
                            </div>
                        </div>
                                
                        <div class="form-group ">
                            <label for="cname" class="control-label col-lg-2">Contact Number <span class="required">*</span></label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" name="contact_number" minlength="5" required />
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
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">One 2 One<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="1" name="one_2_one">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Victory Weekend<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="1" name="victory_weekend">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Water Baptism<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="1" name="water_baptism">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Making Disciples<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="1" name="making_disciples">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Church Community<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="1" name="church_community">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Foundation Class<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="1" name="foundation_class">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Empowering Leaders<span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="1" name="empowering_leaders">
                                                  
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group ">
                                    <label for="cemail" class="control-label col-lg-2">Do you have another intern? <span class="required">*</span></label>
                                    <div class="col-lg-10">
                                        <select class="form-control input-lg m-bot15" name="do_you_have_another_intern">
                                            <option value=""></option>
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
            </div>
        </div>
    </div>
</div>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>