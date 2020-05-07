<?php
// module name
$HmvcMenu["offer"] = array(
    // set icon
    "icon" => "<i class='fa fa-gift' aria-hidden='true'></i>", 
    
    'offer_list'   => array(  
        "controller" => "offer_controller",
        "method"     => "create_offer",
        "permission" => "read"
    ), 
);


