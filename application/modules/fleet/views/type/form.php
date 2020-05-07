<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-bd lobidrag">
            <div class="panel-heading">
                <div class="panel-title">
                    <h4>
                        <a href="<?php echo base_url('fleet/fleet_type/index') ?>" class="btn btn-sm btn-success"
                           title="List"><i class="fa fa-list"></i> <?php echo display('list') ?></a>
                        <?php if ($fleet_type->id): ?>
                            <a href="<?php echo base_url('fleet/fleet_type/form') ?>" class="btn btn-sm btn-info"
                               title="Add"><i class="fa fa-plus"></i> <?php echo display('add') ?></a>
                        <?php endif; ?>
                    </h4>
                </div>
            </div>
            <div class="panel-body">

                <?= form_open('fleet/fleet_type/form/') ?>
                <?php echo form_hidden('id', $fleet_type->id); ?>

                <div class="form-group row">
                    <label for="type" class="col-sm-3 col-form-label"><?php echo display('fleet_type') ?> *</label>
                    <div class="col-sm-4">
                        <input name="type" class="form-control" type="text"
                               placeholder="<?php echo display('fleet_type') ?>" id="type"
                               value="<?php echo $fleet_type->type ?>">
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="row">

                        <div class="col-sm-7">
                            <div class="form-group row">
                                <label for="type"
                                       class="col-sm-5 col-form-label"><?php echo display('layout') ?></label>
                                <div class="col-sm-3">
                                    <select id="layout" name="layout" required="required" class="form-control">
                                        <!-- <option value="2-2" <?php if ($fleet_type->layout == "2-2") {
                                            echo "selected";
                                        } ?>>2-2
                                        </option>
                                        <option value="1-1" <?php if ($fleet_type->layout == "1-1") {
                                            echo "selected";
                                        } ?>>1-1
                                        </option>
                                        <option value="2-1" <?php if ($fleet_type->layout == "2-1") {
                                            echo "selected";
                                        } ?>>2-1
                                        </option>
                                        <option value="1-2" <?php if ($fleet_type->layout == "1-2") {
                                            echo "selected";
                                        } ?>>1-2
                                        </option> -->
                                        <option value="3-2" <?php if ($fleet_type->layout == "3-2") {
                                            echo "selected";
                                        } ?>>3-2
                                        </option>
                                        <!-- <option value="2-3" <?php if ($fleet_type->layout == "2-3") {
                                            echo "selected";
                                        } ?>>2-3
                                        </option>
                                        <option value="3-3" <?php if ($fleet_type->layout == "3-3") {
                                            echo "selected";
                                        } ?>>3-3
                                        </option> -->
                                    </select>
                                </div>
                                <div class="col-sm-4">
                                    <input type="checkbox" id="checkbox" name="lastseat"
                                           style="height: 15px;width: 15px" <?php if ($fleet_type->lastseat == "last") {
                                        echo "checked";
                                    } else {
                                        echo " ";
                                    } ?> value="<?php echo $chekval = $fleet_type->lastseat; ?>">
                                    <label class="col-form-label"><?php echo display('last_seat_availabe') ?></label>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="total_seat"
                                       class="col-sm-5 col-form-label"><?php echo display('total_seat') ?></label>
                                <div class="col-sm-7">
                                    <input name="total_seat" class="form-control" type="number"
                                           placeholder="<?php echo display('total_seat') ?>" id="seat"
                                           value="<?php echo $fleet_type->total_seat ?>" onkeyup="myFunction()">
                                </div>
                            </div>

                            <div class="form-group row">

                                <label for="seat_numbers"
                                       class="col-sm-5 col-form-label"><?php echo display('seat_numbers') ?></label>

                                <div class="col-sm-7">
                                    <textarea name="seat_numbers" class="form-control" placeholder="NO of seat"
                                              id="demo"
                                              style="height: 200px"><?php echo $fleet_type->seat_numbers ?></textarea>

                                    <span class="text-danger help-text">Use comma to separate the input</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-5" id="refr"
                        ">

                        <table id="layoutimg">
                            <?php $total_s = $fleet_type->total_seat;
                            if (!empty($total_s) && $fleet_type->layout == "2-2"){
                            for ($i = 1;
                            $i <= $total_s / 4;
                            $i++){
                            ?>
                            <tr>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>
                                <td>
                                    <?php if ($i == round($total_s / 4) && $fleet_type->lastseat == "last") { ?>
                                        <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                        ?>
                                    <?php } else { ?>
                                        <span style="color:white">Line Break</span>
                                    <?php } ?>
                                </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>

                            <tr>

                                <?php }
                                }


                                if (!empty($total_s) && $fleet_type->layout == "3-2"){
                                for ($i = 1;
                                $i <= $total_s / 5;
                                $i++){
                                ?>
                            <tr>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>
                                <td>
                                    <?php if ($i == round($total_s / 5) && $fleet_type->lastseat == "last") { ?>
                                        <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                        ?>
                                    <?php } else { ?>
                                        <span style="color:white">Line Break</span>
                                    <?php } ?> </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>

                            <tr>

                                <?php }
                                }

                                if (!empty($total_s) && $fleet_type->layout == "2-3"){
                                for ($i = 1;
                                $i <= $total_s / 5;
                                $i++){
                                ?>
                            <tr>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>

                                <td>
                                    <?php if ($i == round($total_s / 5) && $fleet_type->lastseat == "last") { ?>
                                        <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                        ?>
                                    <?php } else { ?>
                                        <span style="color:white">Line Break</span>
                                    <?php } ?> </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>

                            <tr>

                                <?php }
                                }

                                if (!empty($total_s) && $fleet_type->layout == "1-1"){
                                for ($i = 1;
                                $i <= $total_s / 2;
                                $i++){
                                ?>
                            <tr>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>

                                <td>
                                    <?php if ($i == round($total_s / 2) && $fleet_type->lastseat == "last") { ?>
                                        <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                        ?>
                                    <?php } else { ?>
                                        <span style="color:white">Line Break</span>
                                    <?php } ?>  </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>


                            <tr>

                                <?php }
                                }

                                if (!empty($total_s) && $fleet_type->layout == "1-2"){
                                for ($i = 1;
                                $i <= $total_s / 3;
                                $i++){
                                ?>
                            <tr>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>

                                <td>
                                    <?php if ($i == round($total_s / 3) && $fleet_type->lastseat == "last") { ?>
                                        <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                        ?>
                                    <?php } else { ?>
                                        <span style="color:white">Line Break</span>
                                    <?php } ?>  </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>

                            <tr>

                                <?php }
                                }

                                if (!empty($total_s) && $fleet_type->layout == "2-1"){
                                for ($i = 1;
                                $i <= $total_s / 3;
                                $i++){
                                ?>
                            <tr>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>
                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>

                                <td>
                                    <?php if ($i == round($total_s / 3) && $fleet_type->lastseat == "last") { ?>
                                        <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                        ?>
                                    <?php } else { ?>
                                        <span style="color:white">Line Break</span>
                                    <?php } ?> </td>

                                <td>
                                    <?php echo "<img class='img' width='50px' height='50px' src='../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' onerror=this.src='../../../assets/img/f2dcc1cda37a23d4dd30125ebf2ac6ae.png' title='' />";
                                    ?>  </td>

                            <tr>

                                <?php }
                                }

                                ?>
                        </table>

                    </div>

                    <?php
                    $this->load->view('include/include');
                    ?>

                </div>
            </div>
            <div class="form-group row">
                <label for="fleet_facilities"
                       class="col-sm-3 col-form-label"><?php echo display('fleet_facilities') ?></label>
                <div class="col-sm-4">
                    <!-- <input name="fleet_facilities" class="form-control tokenfield" type="text" placeholder="<?php echo display('fleet_facilities') ?>" id="fleet_facilities" value="<?php echo $fleet_type->fleet_facilities ?>"> -->
                    <select name="fleet_facilities[]" class="form-control tokenfield" multiple="multiple">
                        <?php
                        $facilistis = explode(',', $fleet_type->fleet_facilities);

                        foreach ($facilities as $facilities) {
                            foreach ($facilistis as $fac) {
                                ?>
                                <option value="<?php echo $facilities->name; ?>" <?php if ($facilities->name == $fac) {
                                    echo 'selected';
                                } ?>><?php echo $facilities->name; ?></option>
                            <?php }
                        } ?>

                    </select>
                </div>
            </div>


            <div class="form-group row">
                <label for="status" class="col-sm-3 col-form-label">Status *</label>
                <div class="col-sm-9">
                    <label class="radio-inline">
                        <?php echo form_radio('status', '1', (($fleet_type->status == 1) ? 1 : 0), 'id="status"'); ?>
                        Active
                    </label>
                    <label class="radio-inline">
                        <?php echo form_radio('status', '0', (($fleet_type->status == "0") ? 1 : 0), 'id="status"'); ?>
                        Inactive
                    </label>
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
<script type="text/javascript">
    $(document).ready(function () {

        $('#fleet_facilities').tokenfield({
            autocomplete: {
                source: [<?php foreach ($fleet_facilities_list as $value) echo "'$value', ";?>],
                delay: 100
            },
            showAutocompleteOnFocus: true
        });
    });
</script>