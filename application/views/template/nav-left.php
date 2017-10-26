<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">                
            <li class="active">
                <a class="" href="">
                    <i class="icon_house_alt"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li class="sub-menu">
                <a href="javascript:;" class="">
                    <i class="icon_document_alt"></i>
                    <span>Members</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
                <ul class="sub">
                    <?php if($isAdmin=="admin"): ?>
                    <li><a class="" href="<?php echo base_url("/members/add");?>">Add</a></li>                          
                    <?php endif; ?>
                    <li><a class="" href="<?php echo base_url("/members/all");?>">List</a></li>
                    
                </ul>
            </li>  
            
            <?php if($isAdmin=="admin"): ?>
            
            <li class="sub-menu">
                <a href="javascript:;" class="">
                    <i class="icon_document_alt"></i>
                    <span>Campus</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
                <ul class="sub">
                    <li><a class="" href="<?php echo base_url("/campuses/add");?>">Add</a></li>                          
                    <li><a class="" href="<?php echo base_url("/campuses/all");?>">List</a></li>
                </ul>
            </li>       
            <li class="sub-menu">
                <a href="javascript:;" class="">
                    <i class="icon_document_alt"></i>
                    <span>Victory Groups</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
                <ul class="sub">
                    <li><a class="" href="<?php echo base_url("/victory_groups/add");?>">Add</a></li>                          
                    <li><a class="" href="<?php echo base_url("/victory_groups/all");?>">List</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="javascript:;" class="">
                    <i class="icon_document_alt"></i>
                    <span>Reports</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
                <ul class="sub">
                    <li><a class="" href="<?php echo base_url("/reports/index");?>">Download</a></li>
                </ul>
            </li>    
                
            
            <?php endif; ?>
            <li class="sub-menu">
                <a href="javascript:;" class="">
                    <i class="icon_document_alt"></i>
                    <span>Users</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
                <ul class="sub">
                    <li><a class="" href="<?php echo base_url("/users/account");?>">Account</a></li>
                    <li><a class="" href="<?php echo base_url("/users/edit");?>">Edit</a></li>
                </ul>
            </li>
            <li class="sub-menu">
                <a href="<?php echo base_url('users/logout'); ?>" class="">
                    <i class="icon_document_alt"></i>
                    <span>Logout</span>
                    
                </a>
                
            </li>  
        </ul>
              <!-- sidebar menu end-->
    </div>
</aside>