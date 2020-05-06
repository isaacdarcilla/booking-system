<div class="form-group text-right">
    <a href="<?php echo base_url();?>/price/price_controller/create_price" class="btn btn-primary"><?php echo display('price_list') ?></a>
</div>

<div class="row">
        <div class="col-sm-12 col-md-12">
            <div class="panel panel-bd lobidrag">
                <div class="panel-heading">
                    <div class="panel-title">
                        <h4><?php echo (!empty($title)?$title:null) ?></h4>
                    </div>
                </div>
                <div class="panel-body">

                    <?= form_open('price/price_controller/price_update/'. $data->price_id) ?>
                    <input type="hidden" name="price_id" value="<?php echo $data->price_id?>">

                         <div class="form-group row">
                            <label for="route_id" class="col-sm-3 col-form-label"><?php echo display('route_id') ?> *</label>
                            <div class="col-sm-9">
                                <?php echo form_dropdown('route_id', $rout, $bb['route_id'], 'class="form-control"'); ?>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="vehicle_type_id" class="col-sm-3 col-form-label"><?php echo display('vehicle_type_id') ?> *</label>
                            <div class="col-sm-9">
                            <?php echo form_dropdown('vehicle_type_id', $vehc, $bb['vehicle_type_id'], 'class="form-control"'); ?>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="price" class="col-sm-3 col-form-label"><?php echo display('price') ?> *</label>
                            <div class="col-sm-9">
                                <input name="price" class="form-control" type="text" placeholder="<?php echo display('price') ?>" id="price" value="<?php echo $data->price?>">
                            </div>
                             
                        </div>
                         <div class="form-group row">
                                        <label for="childere_price" class="col-sm-3 col-form-label">
                                            <?php echo 'Children Price' ?> *</label>
                                        <div class="col-sm-9">
                                            <input name="childere_price" class="form-control" type="text" placeholder="<?php echo 'Children Price' ?>" id="pchildere_rice" value="<?php echo $data->children_price?>">
                                        </div>

                                    </div>
                                     <div class="form-group row">
                                        <label for="special_price" class="col-sm-3 col-form-label">
                                            <?php echo 'Special Price' ?> *</label>
                                        <div class="col-sm-9">
                                            <input name="special_price" class="form-control" type="text" placeholder="<?php echo 'Special Price' ?>" id="special_price" value="<?php echo $data->special_price?>">
                                        </div>

                                    </div>
                        <div class="form-group row">
                            <label for="group_price_per_person" class="col-sm-3 col-form-label"><?php echo display('group_price_per_person') ?> *</label>
                            <div class="col-sm-9">
                                <input name="group_price_per_person" class="form-control" type="text" onkeyup="Checkprice()" placeholder="<?php echo display('group_price_per_person') ?>" id="group_price_per_person" value="<?php echo $data->group_price_per_person?>">
                            </div>
                             
                        </div>
                        <div class="form-group row">
                            <label for="group_size" class="col-sm-3 col-form-label"><?php echo display('group_size') ?> *</label>
                            <div class="col-sm-9">
                                <input type="text" name="group_size" class="form-control" placeholder="<?php echo display('group_size') ?>" id="group_size" value="<?php echo $data->group_size?>">
                            </div>
                            
                        </div>
             
                        <div class="form-group text-right">
                            <button type="reset" class="btn btn-primary w-md m-b-5"><?php echo display('reset') ?></button>
                            <button type="submit" class="btn btn-success w-md m-b-5"><?php echo display('update') ?></button>
                        </div>
                    <?php echo form_close() ?>

                </div>  
            </div>
        </div>
    </div>
    <script>
function Checkprice() {
     var gp = document.getElementById("group_price_per_person").value;
     var ap = document.getElementById("price").value;
           if (parseInt(ap) < parseInt(gp)) {
        setTimeout(function(){
        alert('Group Price Can not Greater Than Adult price');
        document.getElementById("group_price_per_person").value = '';

        },500);

            return false;
        }
        return true;
}
</script>