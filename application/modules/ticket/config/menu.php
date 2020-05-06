<?php

// module name
$HmvcMenu["ticket"] = array(
    //set icon
    "icon"           => "<i class='fa fa-ticket'></i>", 

    // passenger
    "passenger" => array( 
        'add_passenger'    => array( 
            "controller" => "passenger",
            "method"     => "form",
            "permission" => "create"
        ), 
        'passenger_list'  => array( 
            "controller" => "passenger",
            "method"     => "index",
            "permission" => "read"
        ), 
    ), 


    // booking
    "booking_info" => array( 
        'add_booking'    => array( 
            "controller" => "booking",
            "method"     => "form",
            "permission" => "create"
        ), 
        
        'booking_list'  => array( 
            "controller" => "booking",
            "method"     => "index",
            "permission" => "read"
        ), 
        "unpaid_cash_booking_list" => array(  
        "controller" => "booking",
        "method"     => "unpaisd_cash_booking",
        "permission" => "read"
    ), 
    // feedback
    // "ticket_confirmation" => array(  
    //     "controller" => "booking",
    //     "method"     => "confirmation",
    //     "permission" => "read"
    // ), 
    ), 
      // payemt_terms and condition
    "how_to_use" => array( 
       
            "controller" => "howtouse",
            "method"     => "form",
            "permission" => "read"
 
    ), 
     // payemt_terms and condition
    "payment_term_andcondition" => array( 
       
            "controller" => "terms",
            "method"     => "terms_and_condition_list",
            "permission" => "read"
 
    ), 


//confirmation
   
  
    // refund
    "refund" => array( 
        'add_refund'    => array( 
            "controller" => "refund",
            "method"     => "form",
            "permission" => "create"
        ), 
        'refund_list'  => array( 
            "controller" => "refund",
            "method"     => "index",
            "permission" => "read"
        ), 
    ), 

  
    // feedback
    "feedback" => array(  
        "controller" => "feedback",
        "method"     => "index",
        "permission" => "read"
    ), 

// downtime
    // "downtime" => array(  
    //     "controller" => "Downtime",
    //     "method"     => "form",
    //     "permission" => "update"
    // ), 
  
);
   

 