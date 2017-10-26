<section id="main-content">
    <section class="wrapper">            
              <!--overview start-->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> Victory Group</h3>
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
                        <h3>Victory Group Information Form</h3>
                    </header>
                    <div class="panel-body">
                        <div class="form">
                            
                            <form class="form-validate form-horizontal" id="feedback_form" action="" method="post">
                                <?php foreach($victory_groups as $victory_group): ?>
                                
                                <div class="col-lg-6">
                                    <input type="hidden" name="victory_group_id" value="<?php echo $victory_group_id ?>">
                                    <input type="hidden" name="member_id" value="<?php echo $victory_group['member_id'] ?>">
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-4">Campus <span class="required">*</span></label>
                                        <div class="col-lg-8">
                                            <select class="form-control input-lg m-bot15" name="campus">
                                                <option value="<?php echo $victory_group['campus'] ?>"><?php echo $victory_group['campus'] ?></option>
                                                <?php foreach($campuses as $campus):?>

                                                <option value="<?php echo $campus['name'] ?>"><?php echo $campus['name'] ?></option>
                                                <?php endforeach; ?>
                                            </select>

                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-4">When did you jumpstart your victory group <span class="required">*</span></label>
                                        <div class="col-lg-8">
                                            <input class="form-control datepicker" id="datepicker" data-date-format="mm/yyyy" value="<?php echo $victory_group['when_jumpstart'] ?>"  name="when_jumpstart" minlength="3" type="text" required />
                                            
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-4">How many times did you meet for the past 3 months <span class="required">*</span></label>
                                        <div class="col-lg-8">
                                            <select class="form-control input-lg m-bot15" name="how_many_times">
                                                <option value="<?php echo $victory_group['how_many_times'] ?>"><?php echo $victory_group['how_many_times'] ?></option>
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
                                                <option value="<?php echo $victory_group['demographic'] ?>"><?php echo $victory_group['demographic'] ?></option>
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
                                                <option value="<?php echo $victory_group['number_of_victory_group_member'] ?>"><?php echo $victory_group['number_of_victory_group_member'] ?></option>
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
                                                <option value="<?php echo $victory_group['member_from_outreach'] ?>"><?php echo $victory_group['member_from_outreach'] ?></option>
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
                                            <input class="form-control" id="cname" value="<?php echo $victory_group['schedule'] ?>" name="schedule" minlength="5" type="text" required />
                                        </div>
                                        <label for="cname" class="control-label col-lg-4">Day / Time / Location (e.g Monday / 3pm / KFC)<span class="required">*</span></label>

                                    </div>
                                </div>
                                
                                
                                <div class="col-lg-6 border-content">
                                    <div>
                                    <h3>Victory Group Members Discipleship Journey</h3>
                                    </div>
                                    <div>
                                        <p><i>Input total number of members who COMPLETED each discipleship milestone</i></p>
                                    </div>
                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-4">One 2 One <span class="required">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" value="<?php echo $victory_group['one_2_one'] ?>" name="one_2_one" minlength="5" required />
                                        </div>
                                    </div>

                                     <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-4">Victory Weekend <span class="required">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" value="<?php echo $victory_group['victory_weekend'] ?>" name="victory_weekend" minlength="5" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-4">Water Baptism <span class="required">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" value="<?php echo $victory_group['water_baptism'] ?>" name="water_baptism" minlength="5" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-4">Making Disciples<span class="required">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" value="<?php echo $victory_group['making_disciples'] ?>" name="making_disciples" minlength="5" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-4">Church Community <span class="required">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" value="<?php echo $victory_group['church_community'] ?>" name="church_community" minlength="5" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-4">Foundation Class<span class="required">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" value="<?php echo $victory_group['foundation_class'] ?>" name="foundation_class" minlength="5" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-4">Empowering Leaders<span class="required">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" value="<?php echo $victory_group['empowering_leaders'] ?>" name="empowering_leaders" minlength="5" required />
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="cname" class="control-label col-lg-4">Leadership 113<span class="required">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="number" id="replyNumber" min="0" step="1" data-bind="value:replyNumber" class="form-control" value="<?php echo $victory_group['leadership_113'] ?>" name="leadership_113" minlength="5" required />
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
                                            <input type="submit" id="submit" name="memberUpdate" class="btn btn-primary" value="SAVE"/>

                                            <button class="btn btn-default" type="button">Cancel</button>
                                        </div>
                                    </div>
                                </div>                                
                                <?php endforeach; ?>
                            </form>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </section>
</section>