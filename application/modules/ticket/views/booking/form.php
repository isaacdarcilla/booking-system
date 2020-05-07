<div id="output" class="hide alert alert-danger"></div>

<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('ticket/booking/index') ?>" class="btn btn-sm btn-success" title="List"> <i class="fa fa-list"></i> <?php echo display('list') ?></a> 
                        <?php if($booking->id): ?>
                        <a href="<?php echo base_url('ticket/booking/form') ?>" class="btn btn-sm btn-info" title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a> 
                        <?php endif; ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open('ticket/booking/createBooking/', 'id="bookingFrm"') ?> 


                <div class="form-group row">
                    <label for="approximate_time" class="col-sm-3 col-form-label"><?php echo display('booking_date') ?> *</label>
                    <div class="col-sm-9">
                        <input name="approximate_time" class="findTripByRouteDate form-control datepicker" type="text" placeholder="<?php echo display('booking_date') ?>" id="approximate_time" value="<?php echo  (!empty($booking->approximate_time)?$booking->approximate_time:date('d-m-Y')) ?>">
                    </div>
                    </div>  
                     <div class="form-group row">
                        <label for="ftypes" class="col-sm-3 col-form-label"><?php echo display('types') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('ftypes', $tps, (!empty($booking->route_id)?$booking->route_id:null), 'id="ftypes" class="findTripByRouteDate form-control"') ?> 
                           <div id="typeHelpText"></div>
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="route_id" class="col-sm-3 col-form-label"><?php echo display('route_name') ?> *</label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('route_id', $route_dropdown, (!empty($booking->route_id)?$booking->route_id:null), 'id="route_id" class="findTripByRouteDate form-control"') ?> 
                            <div id="routeHelpText"></div>
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="tripTable" class="col-sm-3 col-form-label"><?php echo display('trip_id') ?> *</label>
                        <div class="col-sm-9">
                            <div class="row">
                                <div class="col-sm-6" id="availableSeats">
                                    <h4 class="bg-primary" style="padding:5px;margin:0"><?php echo display('select_seats') ?></h4>
                                </div>
                                <div class="col-sm-6" id="tripTable">
                                    <table class="table table-condensed table-striped">
                                        <thead>
                                            <tr class="bg-primary">
                                                <th>#</th>
                                                <th><?php echo display('time')?></th>
                                                <th><?php echo display('available_seats') ?></th>
                                                <th><?php echo display('ac_available')    ?></th> 
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>

                            <input type="hidden" name="total_seat"/>
                            <input type="hidden" name="seat_number"/>
                        </div>
                    </div> 
                    
                       <div class="form-group row">
                        <label for="adult" class="col-sm-3 col-form-label"><?php echo 'Regular Fare' ?></label>
                        <div class="col-sm-9">
                            <input name="adult" id="adult" class="form-control seatno" placeholder="Regular Fare" autocomplete="off"  type="number"/>
                            
                        </div>
                    </div> 

                             <div class="form-group row">
                        <label for="child_no" class="col-sm-3 col-form-label"><?php echo 'Child (4-11 yrs)' ?></label>
                        <div class="col-sm-9">
                            <input name="child_no" id="child_no" class="form-control seatno" placeholder="Child (4-11 yrs)" autocomplete="off"  type="number"/>
                            
                        </div>
                    </div> 

                         <div class="form-group row">
                        <label for="special" class="col-sm-3 col-form-label"><?php echo 'Senior Citizen/PWD' ?></label>
                        <div class="col-sm-9">
                            <input name="special" id="special" class="form-control seatno" placeholder="Senior Citizen/PWD" autocomplete="off"  type="number"/>
                                  <input type="hidden" name="ttlseatw" id="tseats" class="form-control"  />
                            
                        </div>
                    </div> 
                    <!-- <div class="form-group row">
                        <label for="offerCode" class="col-sm-3 col-form-label"><?php echo display('offer_code') ?></label>
                        <div class="col-sm-9">
                            <input name="offer_code" class="form-control" type="text" placeholder="<?php echo display('offer_code') ?>" id="offerCode" value="<?php echo $booking->offer_code ?>">
                            <div id="offerHelpText"></div>
                        </div>
                    </div>  -->

                    <div class="form-group row">
                        <label for="price" class="col-sm-3 col-form-label"><?php echo display('price') ?> *</label>
                        <div class="col-sm-9">
                            <div class="row">
                                <strong class="col-sm-4"><?php echo display('price') ?></strong>
                                <strong class="col-sm-4"><?php echo display('discount') ?></strong>
                                <strong class="col-sm-4"><?php echo display('amount') ?></strong>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <input name="price" class="form-control text-right" type="number" placeholder="<?php echo display('price') ?>" id="price" value="<?php echo $booking->price ?>" >
                                </div>
                                <div class="col-sm-4">
                                    <input name="discount" class="form-control text-right" type="number" placeholder="<?php echo display('discount') ?>" id="discount" value="<?php echo $booking->discount ?>" >
                                </div>
                                <div class="col-sm-4">
                                    <input name="amount" class="form-control text-right" type="number" placeholder="<?php echo display('amount') ?>" id="amount" value="<?php echo $booking->amount ?>" >
                                </div> 
                            </div> 
                        </div>
                    </div> 
 

                    <div class="form-group row">
                        <label for="passenger_id_no" class="col-sm-3 col-form-label"><?php echo display('passenger_email') ?> *</label>
                        <div class="col-sm-9">
                            <div class="row">
                                <div class="col-sm-9">
                                    <input name="passenger_email" class="form-control" type="text" placeholder="<?php echo display('passenger_email') ?>" id="passenger_email" value="<?php echo $booking->email ?>">
                                <input name="passenger_id_no" class="form-control" type="hidden" placeholder="<?php echo display('passenger_id') ?>" id="passenger_id_no" value="<?php echo $booking->passenger_id_no ?>">
                                <div id="passengerHelpText"></div>
                                </div>
                                <div class="col-sm-3">
                                    <a href="#" data-toggle="modal" data-target="#myModal" class="btn btn-success"><?php echo display('add_passenger') ?></a>
                                </div>
                            </div>
                        </div>
                    </div> 
                    
                    <div class="form-group row">
                        <label for="requestFacilities" class="col-sm-3 col-form-label"><?php echo display('request_facilities') ?></label>
                        <div class="col-sm-9" id="requestFacilities"></div>
                    </div> 

                    <div class="form-group row">
                        <label for="pickup_location" class="col-sm-3 col-form-label"><?php echo display('pickup_location') ?></label>
                        <div class="col-sm-9">
                            <select class="tripLocation form-control" name="pickup_location" id="pickup_location"></select> 
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="drop_location" class="col-sm-3 col-form-label"><?php echo display('drop_location') ?></label>
                        <div class="col-sm-9">
                            <select class="tripLocation form-control" name="drop_location" id="drop_location"></select> 
                        </div>
                    </div>
                     <div class="form-group row">
                        <label for="payment_status" class="col-sm-3 col-form-label"><?php echo display('payment_status') ?>*</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="status" id="status" required="">
                                <option value="">Select Option</option>
                                <option value="NULL"><?php echo display('paid')?></option>
                                <option value="1"><?php echo display('unpaid')?></option>
                            </select> 
                        </div>
                    </div>
 
                    <div class="form-group text-right">
                        <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
                        <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('save') ?></button>
                    </div>
                <?php echo form_close() ?>

            </div>  
        </div>
    </div>
</div> 






<!-- ADD NEW PASSENGER -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><?php echo display('add_passenger') ?></h4>
            </div>
            <div class="modal-body">
                <div id="passengerMsg" class="alert hide"></div>

                <?= form_open_multipart('ticket/booking/newPassenger', array("id"=>"passengerFrm")) ?>

                    <div class="form-group row">
                        <label for="name" class="col-sm-3 col-form-label"><?php echo display('name') ?> *</label>
                        <div class="col-sm-9">
                            <div class="row">
                                <div class="col-sm-6">
                                    <input name="firstname" class="form-control" type="text" placeholder="<?php echo display('firstname') ?>" id="name" value="<?php echo $passenger->firstname ?>">
                                </div> 
                                <div class="col-sm-6">
                                    <input name="lastname" class="form-control" type="text" placeholder="<?php echo display('lastname') ?>" value="<?php echo $passenger->lastname ?>">
                                </div>
                            </div> 
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="phone" class="col-sm-3 col-form-label"><?php echo display('phone') ?></label>
                        <div class="col-sm-9">
                            <input name="phone" class="form-control" type="text" placeholder="<?php echo display('phone') ?>" id="phone" value="<?php echo $passenger->phone ?>">
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="email" class="col-sm-3 col-form-label"><?php echo display('email') ?></label>
                        <div class="col-sm-9">
                            <input name="email" class="form-control" type="text" placeholder="<?php echo display('email') ?>" id="email" value="<?php echo $passenger->email ?>">
                        </div>
                    </div> 

                     
                    <div class="form-group row">
                        <label for="address_line_1" class="col-sm-3 col-form-label"><?php echo display('address_line_1') ?></label>
                        <div class="col-sm-9">
                            <input name="address_line_1" class="form-control" type="text" placeholder="<?php echo display('address_line_1') ?>" id="address_line_1" value="<?php echo $passenger->address_line_1 ?>">
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="address_line_2" class="col-sm-3 col-form-label"><?php echo display('address_line_2') ?></label>
                        <div class="col-sm-9">
                            <input name="address_line_2" class="form-control" type="text" placeholder="<?php echo display('address_line_2') ?>" id="address_line_2" value="<?php echo $passenger->address_line_2 ?>">
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="country" class="col-sm-3 col-form-label"><?php echo display('country') ?></label>
                        <div class="col-sm-9">
                            <?php echo form_dropdown('country', $country_dropdown, (!empty($passenger->country)?$passenger->country:"BD"), ' class="form-control" id="country" style="width:100%"') ?> 
                        </div>
                    </div>   
                    
                    <div class="form-group row">
                        <label for="city" class="col-sm-3 col-form-label"><?php echo display('city') ?></label>
                        <div class="col-sm-9">
                            <input name="city" class="form-control" type="text" placeholder="<?php echo display('city') ?>" id="city" value="<?php echo $passenger->city ?>">
                        </div>
                    </div> 

                    <div class="form-group row">
                        <label for="zip_code" class="col-sm-3 col-form-label"><?php echo display('zip_code') ?></label>
                        <div class="col-sm-9">
                            <input name="zip_code" class="form-control" type="text" placeholder="<?php echo display('zip_code') ?>" id="zip_code" value="<?php echo $passenger->zip_code ?>">
                        </div>
                    </div> 

         
                    <div class="form-group text-right">
                        <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
                        <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('save') ?></button>
                    </div>

                <?php echo form_close() ?>
            </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
 


<script type="text/javascript">
$(document).ready(function() {
 
       
    /*
    |----------------------------------------------
    |  Add Passenger
    |----------------------------------------------     
    */


    $("#passengerFrm").submit(function(e){
        e.preventDefault();
        var passengerMsg      = $("#passengerMsg");
        var passenger_id_no   = $("#passenger_id_no");
        var passengerHelpText = $("#passengerHelpText");
       var passenger_email   = $("#passenger_email");
        $.ajax({
            url: $(this).attr('action'),
            method: $(this).attr('method'),
            dataType: 'json',
            data: $(this).serialize(),
            beforeSend: function()
            {
                passengerMsg.removeClass('hide');
                passenger_id_no.val('');
                passengerHelpText.html('');
            },
            success: function(data)
            {
                if (data.status == true) {
                    passengerMsg.addClass('alert-success').removeClass('alert-danger').html(data.message);
                    passenger_id_no.val(data.passenger_id_no);
                    passenger_email.val(data.email);
                    $('#myModal').modal('hide');
                } else {
                    passengerMsg.addClass('alert-danger').removeClass('alert-success').html(data.exception);
                }
            },
            error: function(xhr)
            {
                alert('failed!');
            }

        });

    });



    /*
    |----------------------------------------------
    | Create booking 
    |----------------------------------------------
    */

    var frm = $("#bookingFrm");
    var output = $("#output");
    frm.on('submit', function(e) {
        e.preventDefault(); 
        $.ajax({
            url : $(this).attr('action'),
            method : $(this).attr('method'),
            dataType : 'json',
            data : frm.serialize(),
            success: function(data) 
            {
                if (data.status == true) {
                    output.empty().html(data.message).addClass('alert-success').removeClass('alert-danger').removeClass('hide');

                    setInterval(function(){
                        window.location.href = "<?php echo base_url('ticket/booking/view/') ?>"+data.id_no;
                    }, 1500);

                } else {
                    output.empty().html(data.exception).addClass('alert-danger').removeClass('alert-success').removeClass('hide');
                }
            },
            error: function(xhr)
            {
                alert('failed!');
            }
        });
    });


    /*
    *------------------------------------------------------
    * Trip schedule 
    *------------------------------------------------------
    */

    // initial variables
    var countSeats  = 0;
    var seatSerial  = "";

    //findTripByRouteDate
    $(".findTripByRouteDate").change(function() {

        //reset previous data
        countSeats = 0;
        $('input[name="total_seat"]').val(0);
        $('input[name="seat_number"]').val("");
        $("#price").val(0);
        $("#amount").val(0);
        $("#offerCode").val("");
        $("#discount").val(0);

        //set variables
        var routeHelpText  = $("#routeHelpText");
        var typeHelpText  = $("#typeHelpText");
        var availableSeats = $("#availableSeats");
        var tripLocation   = $(".tripLocation");
        var route_id       = $("#route_id").val();
        var date           = $("#approximate_time").val();
        var tripTable      = $("#tripTable");
        var tps            = $("#ftypes").val();

       if (tps.length == 0) {
            typeHelpText.empty().append('<p class="help-block text-danger">Please select the Bus Type</p>'); 
        } else {
             typeHelpText.empty();
        if (route_id.length == 0) {
            routeHelpText.empty().append('<p class="help-block text-danger">Please select the route name</p>'); 
        } else {
            routeHelpText.empty(); 
            // request to get fleet schedule 
            $.ajax({
                url: '<?php echo base_url('ticket/booking/findTripByRouteDate') ?>',
                method : 'post',
                dataType: 'json',
                data: {
                    '<?php echo $this->security->get_csrf_token_name() ?>':'<?php echo $this->security->get_csrf_hash() ?>',
                    'route_id': route_id, 
                    'date'    : date,
                    'tps'     : tps
                },
                success: function(data) {
                    tripTable.empty().html(data.html );
                    tripLocation.empty().html(data.location);
                    availableSeats.empty();
                }, 
                error: function(xhr) {
                    alert('failed!');
                }
            });
        }
    }

    });


    //find setas by trip id
    $('body').on('click', ".tripIdNo", function() {
      var bdate =$("#approximate_time").val();
              //reset previous data
        countSeats = 0;
        $('input[name="total_seat"]').val(0);
        $('input[name="seat_number"]').val("");
        $("#price").val(0);
        $("#amount").val(0);
        $("#offerCode").val("");
        $("#discount").val(0);


        //set variables
        var availableSeats = $("#availableSeats");
        var requestFacilities = $("#requestFacilities");
        //alert(bdate);
        var tripIdNo       = $(this).val();
        var fleetRegNo     = $(this).attr('data-fleetRegNo');
        var fleetTp     = $(this).attr('data-fleetTypeId');
        // request to get available seats 
        $.ajax({
            url: '<?php echo base_url('ticket/booking/findSeatsByTripID') ?>',
            method : 'post',
            dataType: 'json',
            data: {
                '<?php echo $this->security->get_csrf_token_name() ?>':'<?php echo $this->security->get_csrf_hash() ?>',
                'tripIdNo'  : tripIdNo, 
                'fleetTp': fleetTp,
                'bdate'     : bdate
            },
            success: function(data) {
                availableSeats.html(data.html);
                requestFacilities.html(data.facilities);
            }, 
            error: function(xhr) {
                alert('failed!');
            }
        });

    });

 
    /*
    *------------------------------------------------------
    * Seat booking & price selection 
    *------------------------------------------------------
    */
    $('body').on('click', '.ChooseSeat', function(){
        var seat = $(this); 
           
        if (seat.attr('data-item') != "selected") {
            seat.removeClass('btn-primary').addClass('btn-success').attr('data-item','selected');   
        }  else if (seat.attr('data-item') == "selected")  {
            seat.removeClass('btn-success').addClass('btn-primary').attr('data-item','');  
        } 

        //reset seat serial for each click
        seatSerial = "";
        countSeats = 0;
        $("button[data-item=selected]").each(function(i, x) {
            countSeats = i+1;
            seatSerial += $(this).text()+","; 
        }); 
 // alert($("input[name=tripIdNo]").attr('data-fleetTypeId'));
        $('input[name="total_seat"]').val(countSeats);
        $('input[name="seat_number"]').val(seatSerial);


        //---------price selection --------------
        // var routeId     = $("#route_id").val();
        // var fleetTypeId = $("input[name=tripIdNo]").attr('data-fleetTypeId');
        // var discount    = $("#discount").val(); 

        // $.ajax({
        //     url : '<?php echo base_url('ticket/booking/priceByRouteTypeAndSeat') ?>',
        //     method: 'post',
        //     dataType: 'json',
        //     data: 
        //     {
        //         '<?php echo $this->security->get_csrf_token_name() ?>':'<?php echo $this->security->get_csrf_hash() ?>',
        //         'routeId': routeId,
        //         'fleetTypeId': fleetTypeId,
        //         'totalSeat' : countSeats
        //     },
        //     success: function(data)
        //     {
        //         if (data.status == true) {
        //             $("#price").val(data.price);
        //             $("#output").addClass("hide").html("");
        //         } else {
        //             $("#price").val(0);
        //             $("#output").removeClass("hide").html(data.exception);
        //         }

        //         $("#amount").val(data.price-discount);
        //     }, 
        //     error: function(xhr)
        //     {
        //         alert('failed!');
        //     }
        // });
    });


    $("#price").on('keyup', function(){
        var price = $(this).val();
        var discount = $("#discount").val();
        $("#amount").val(price-discount);
    });

    $("#discount").on('keyup', function(){
        var price = $("#price").val();
        var discount = $(this).val();
        $("#amount").val(price-discount);
    });


    $('.seatno').on('keyup',function(){
         var total_seatts = 0;
        var child   = $('#child_no').val();
        var adult   = $('#adult').val();
        var special = $('#special').val();
        var routeId     = $("#route_id").val();
        var fleetTypeId = $("input[name=tripIdNo]").attr('data-fleetTypeId');
        var discount    = $("#discount").val(); 
          
           $(".seatno").each(function() {
            isNaN(this.value) || 0 == this.value.length || (total_seatts += parseFloat(this.value))
        });
          $("#tseats").val(total_seatts);
          total_bseats=$('#tseats').val();
        if(total_bseats > countSeats){
        //alert('please check your Seat Number');
        document.getElementById("tseats").value = '';
        document.getElementById("child_no").value = 0;
        document.getElementById("special").value = 0;
        document.getElementById("adult").value = 0;
       var checkseat = 'false';
        }

        $.ajax({
            url : '<?php echo base_url('ticket/booking/priceByRouteTypeAndSeat') ?>',
            method: 'post',
            dataType: 'json',
            data: 
            {
                '<?php echo $this->security->get_csrf_token_name() ?>':'<?php echo $this->security->get_csrf_hash() ?>',
                'routeId': routeId,
                'fleetTypeId': fleetTypeId,
                'totalSeat' : countSeats,
                 'child'        : child,
                'adult'        : adult,
                'special'      : special,
                'checkseat'    : checkseat
            },
            success: function(data)
            {
                if (data.status == true) {
                    $("#price").val(data.price);
                    $("#output").addClass("hide").html("");
                } else {
                    $("#price").val(0);
                    $("#output").removeClass("hide").html(data.exception);
                }

                $("#amount").val(data.price-discount);
            }, 
            error: function(xhr)
            {
                alert('failed!');
            }
        });
    });


    /*
    *------------------------------------------------------
    * Offer
    *------------------------------------------------------
    */ 
    $("#offerCode").on('keyup', function(){

        var offerHelpText = $("#offerHelpText");
        var offerRouteId  = $("#route_id").val();
        var tripDate      = $("#approximate_time").val();
        var offerCode     = $(this).val();
        var price         = $("#price").val();

        if ($(this).val().length > 2) {
            
            $.ajax({
                url : '<?php echo base_url('ticket/booking/findOfferByCode') ?>',
                method: 'post',  
                dataType: 'json',          
                data: {
                    '<?php echo $this->security->get_csrf_token_name() ?>':'<?php echo $this->security->get_csrf_hash() ?>',
                    'offerCode': offerCode, 
                    'offerRouteId': offerRouteId, 
                    'tripDate': tripDate 
                },
                success: function(data) {
                    offerHelpText.empty().html(data.message);
                    if (data.status) {
                        offerDiscount = data.discount;
                    } else {
                        offerDiscount = 0.00; 
                    } 
                    $("#discount").val(offerDiscount);
                    $("#amount").val(price-offerDiscount);
                },
                error: function(e)
                {
                    alert('failed!');
                }
            });
        }
    });
 


    /*
    *------------------------------------------------------
    * Passenger
    *------------------------------------------------------
    */ 
    $("#passenger_email").bind('keyup change paste',function() {

        var passengerHelpText = $("#passengerHelpText");

        $.ajax({
            url : '<?php echo base_url('ticket/booking/findPassengerName') ?>',
            method: 'post',  
            dataType: 'json',          
            data: {
                '<?php echo $this->security->get_csrf_token_name() ?>':'<?php echo $this->security->get_csrf_hash() ?>',
                'passengerEamil': $(this).val(), 
            },
            success: function(data) {
                passengerHelpText.empty().html(data.name);
                 $("#passenger_id_no").val(data.passenger_id);
            },
            error: function(e)
            {
                alert('failed!');
            }
        });
    });


});
</script>
