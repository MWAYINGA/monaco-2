<?php
  include 'db_connect.php';
  ?>
  <div class="container-fluid">
    <div class="col-lg-12">
        <div class="row">
            <div class="col-md-2 float-left link">
              <a href="index.php?page=expired_product" class="nav-item nav-expired_product"><span class='icon-field'><i class="fa fa-list"></i></span> Expired List</a>
            </div>
            <div class="col-md-2 float-left " >
              <a href="index.php?page=supplier" class="nav-item nav-supplier"><span class='icon-field'><i class="fa fa-truck-loading"></i></span> Supplier List</a>
            </div>
            <div class="col-md-2 float-left" >
              <a href="index.php?page=customer" class="nav-item nav-customer"><span class='icon-field'><i class="fa fa-user-friends"></i></span> Customer List</a>
            </div>
            <div class="col-md-2 float-left" >
              <a href="index.php?page=salesreport" class="nav-item nav-salesrepor"><span class='icon-field'><i class="fa fa-user-friends"></i></span> Sales Report</a>
            </div>
        </div>
    </div>
	<div class="col-lg-12">
			<!-- FORM Panel -->
            <div class="card col-md-12">
                <div class="card-header"> 
                    <form action="" role="form" id="form-report">
                        <div class="row">
                            <div class="form-group">
                                <label for="">FROM</label>
                                <input type="date" name="fromdate" id="fromdate" class="form-control">
                            </div>
                            <div class="form-group" style="padding-left: 5px;">
                                <label for="">TO</label>
                                <input type="date" name="todate" id="todate"  class="form-control">
                            </div>
                            <div class="form-group" style="padding-left: 5px;">
                                <label class="control-label">MODE</label>
                                <select name="mode" id="mode" class="form-control">
                                    <option value="1">By Item Name</option>
                                    <option value="2">By Category</option>
                                </select>
                            </div>
                            <div class="form-group" style="padding: 13px 0px 0px 10px;">
                                <label for="" class="control-label"></label>
                                <button id="load" class="btn-sm btn-block btn-wave col-md-12 btn-primary" class="form-control">LOAD</button>
                            </div>
                        </div>
                    </form>   
                </div>
                <div class="card-body">
                    <table id='empTable' class='display table'>
                        <thead>
                            <tr>
                                <th>ITEM NAME / CATEGORY</th>
                                <th>TOTAL QUANTITY SOLD</th>
                                <th>AMOUNT EARNED</th>
                                <th>PROFIT</th>  
                            </tr>
                        </thead>
                    
                    </table>
                </div>
            </div>
		</div>
	</div>	

</div>
<script>
    
   $("#form-report").submit(function(e){
    e.preventDefault()
    var fromdate = $('#fromdate').val();
    var todate = $('#todate').val();
    var mode=$("#mode").val();
    if (fromdate=='' && todate=='') {
        return false;
    }
    var dataTable = $('#empTable').DataTable({
                'processing': true,
                'serverSide': true,
                'serverMethod': 'post',
                'searching': false, // Remove default Search Control
                'filtering':false,
                'dom': 'Bfrtip',
                'buttons': [
                    'print'
                ],
                'ajax': {
                    'url':'ajax.php?action=datesalesreport',
                    'data': function(data){
                        // Read values
                        var fromdate = $('#fromdate').val();
                        var todate = $('#todate').val();
                        var mode=$("#mode").val();

                        // Append to data
                        data.fromdate = fromdate;
                        data.todate = todate;
                        data.mode = mode;
                    }
                },
                'columns': [
                    { data: 'Category' },
                    { data: 'Total_quantity_sold' },
                    { data: 'Amount' },
                    { data: 'Profit' },  
                ]
            });
            $('select').on('change',function(){
            dataTable.ajax.reload();
        });  
   });
  
</script>