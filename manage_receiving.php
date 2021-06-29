<?php include 'db_connect.php';

if(isset($_GET['id'])){
	$qry = $conn->query("SELECT * FROM receiving_list where id=".$_GET['id'])->fetch_array();
	foreach($qry as $k => $val){
		$$k = $val;
	}
	$inv = $conn->query("SELECT * FROM inventory where type=1 and form_id=".$_GET['id']);

}

?>
<div class="container-fluid">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-header">
				<h4>Manage Receiving</h4>
			</div>
			<div class="card-body">
				<form action="" id="manage-receiving">
					<input type="hidden" name="id" value="<?php echo isset($_GET['id']) ? $_GET['id'] : '' ?>">
					<input type="hidden" name="ref_no" value="<?php echo isset($ref_no) ? $ref_no : '' ?>">
					<div class="col-md-12">
						<div class="row">
							<div class="form-group col-md-5">
								<label class="control-label">Supplier</label>
								<select name="supplier_id" id="" class="custom-select browser-default select2">
									<option value=""></option>
								<?php 

								$supplier = $conn->query("SELECT * FROM supplier_list order by supplier_name asc");
								while($row=$supplier->fetch_assoc()):
								?>
									<option value="<?php echo $row['id'] ?>"><?php echo $row['supplier_name'] ?></option>
								<?php endwhile; ?>
								</select>
							</div>
						</div>
						<hr>
						<div class="row mb-3">
								<div class="col-md-4">
									<label class="control-label">Product</label>
									<select name="" id="product" class="custom-select browser-default select2">
										<option value=""></option>
									<?php 
									$cat = $conn->query("SELECT * FROM drug_group order by drug_group_name asc");
									while($row=$cat->fetch_assoc()):
										$cat_arr[$row['drug_group_id']] = $row['drug_group_name'];
									endwhile;
									$product = $conn->query("SELECT * FROM product_list  order by name asc");
									while($row=$product->fetch_assoc()):
										$prod[$row['id']] = $row;
									?>
									<option value="<?php echo $row['id'] ?>" data-name="<?php echo $row['name'] ?>" data-measurement="<?php echo $row['measurement'] ?>" data-description="<?php echo $row['description'] ?>"><?php echo $row['name'] . ' | ' . $row['sku'] ?></option>
								<?php endwhile; ?>
									</select>
								</div>
								<div class="col-md-2">
									<label class="control-label">Batch Number</label>
									<input type="text" class="form-control text-right" step="any" id="batch_no" >
								</div>
								<div class="col-md-2">
									<label class="control-label">Qty</label>
									<input type="number" class="form-control text-right" step="any" id="qty" >
								</div>
								<div class="col-md-3">
									<label class="control-label">Buying Price</label>
									<input type="number" class="form-control text-right" step="any" id="bprice" >
								</div>
								<div class="col-md-2">
									<label class="control-label">Wholesale price</label>
									<input type="number" class="form-control text-right" step="any" id="wprice" >
								</div>
								<div class="col-md-3">
									<label class="control-label">Selling</label>
									<input type="number" class="form-control text-right" step="any" id="sprice" >
								</div>
								<div class="col-md-3">
									<label class="control-label">&nbsp</label>
									<button class="btn btn-block btn-sm btn-primary" type="button" id="add_list"><i class="fa fa-plus"></i> Add to List</button>
								</div>


						</div>
						<div class="row">
							<table class="table table-bordered" id="list">
								<colgroup>
									<col width="10%">
									<col width="20%">
									<col width="10%">
									<col width="20%">
									<col width="20%">
									<col width="5%">
								</colgroup>
								<thead>
									<tr>
										<th class="text-center">Expiry Date</th>
										<th class="text-center">Product</th>
										<th class="text-center">Batch No.</th>
										<th class="text-center">Qty</th>
										<th class="text-center">Buying Price</th>
										<th class="text-center">Wholesale Price</th>
										<th class="text-center">Selling Price</th>
										<th class="text-center">Amount</th>
										<th class="text-center"></th>
									</tr>
								</thead>
								<tbody>
									<?php 
									if(isset($id)):
									while($row = $inv->fetch_assoc()): 
										foreach(json_decode($row['other_details']) as $k=>$v){
											$row[$k] = $v;
										}
									?>
										<tr class="item-row">
											<td>
												<input type="date" name="expiry_date[]" class="text-right" value="<?php echo date("Y-m-d",strtotime($row['expiry_date'])) ?>">
											</td>
											<td>
												<input type="hidden" name="inv_id[]" value="<?php echo $row['id'] ?>">
												<input type="hidden" name="product_id[]" value="<?php echo $row['product_id'] ?>">
												<p class="pname">Name: <b><?php echo $prod[$row['product_id']]['name'] ?></b></p>
												<p class="pdesc"><small><i>Description: <b><?php echo $prod[$row['product_id']]['description'] ?></b></i></small></p>
											</td>
											<td>
												<input type="text" min="1" step="any" name="batch_no[]" value="<?php echo $row['batch_no'] ?>" class="text-right">
											</td>
											<td>
												<input type="number" min="1" step="any" name="qty[]" value="<?php echo $row['qty'] ?>" class="text-right">
											</td>
											<td>
												<input type="number" min="1" step="any" name="bprice[]" value="<?php echo $row['price'] ?>" class="text-right">
											</td>
											<td>
												<input type="number" min="1" step="any" name="wprice[]" value="<?php echo $prod[$row['product_id']]['wholesale_price'] ?>" class="text-right">
											</td>
											<td>
												<input type="number" min="1" step="any" name="sprice[]" value="<?php echo $prod[$row['product_id']]['price']?>" class="text-right">
											</td>
											<td>
												<p class="amount text-right"></p>
											</td>
											<td class="text-center">
												<buttob class="btn btn-sm btn-danger" onclick = "rem_list($(this))"><i class="fa fa-trash"></i></buttob>
											</td>
										</tr>
									<?php endwhile; ?>
									<?php endif; ?>
								</tbody>
								<tfoot>
									<tr>
										<th class="text-right" colspan="6">Total</th>
										<th class="text-right tamount"></th>
										<th><input type="hidden" name="tamount" value=""></th>
									</tr>
								</tfoot>
							</table>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<button class="btn btn-primary col-sm-3 btn-sm btn-block float-right .col-md-3">Save</button>
							</div>
						</div>
					</div>
				</form>
			</div>
			
		</div>
	</div>
</div>
<div id="tr_clone">
	<table>
	<tr class="item-row">
		<td>
			<input type="date" name="expiry_date[]" class="text-right" value="" required>
		</td>
		<td>
			<input type="hidden" name="inv_id[]" value="">
			<input type="hidden" name="product_id[]" value="">
			<p class="pname">Name: <b>product</b></p>
			<p class="pdesc"><small><i>Description: <b>Description</b></i></small></p>
		</td>
		<td>
			<input type="text" name="batch_no[]" step="any" id="" value="" class="text-left">
		</td>
		<td>
			<input type="number" min="1" step="any" name="qty[]" value="" class="text-right">
		</td>
		<td>
			<input type="number" min="1" step="any" name="bprice[]" value="" class="text-right">
		</td>
		<td>
			<input type="number" min="1" step="any" name="wprice[]" value="" class="text-right">
		</td>
		<td>
			<input type="number" min="1" step="any" name="sprice[]" value="" class="text-right">
		</td>
		
		<td>
			<p class="amount text-right"></p>
		</td>
		<td class="text-center">
			<buttob class="btn btn-sm btn-danger" onclick = "rem_list($(this))"><i class="fa fa-trash"></i></buttob>
		</td>
	</tr>
	</table>
</div>
<style type="text/css">
	#tr_clone{
		display: none;
	}
	td{
		vertical-align: middle !important;
		justify-content: center;
	}
	td>input{
		margin:auto;
	}
	td p {
		margin: unset;
	}
	td input{
		height: calc(100%);
		width: calc(100%);
		border: unset;

	}
	td input:focus{
		border: unset;    
		outline-width: inherit;
	}
	input[type=number]::-webkit-inner-spin-button, 
	input[type=number]::-webkit-outer-spin-button { 
	  -webkit-appearance: none; 
	  margin: 0; 
	}
</style>
<script>
	$('.select2').select2({
	 	placeholder:"Please select here",
	 	width:"100%"
	})

	$(document).ready(function(){
		if('<?php echo isset($id) ?>' == 1){
			$('[name="supplier_id"]').val('<?php echo isset($supplier_id) ? $supplier_id :'' ?>').select2({
				placeholder:"Please select here",
	 			width:"100%"
			})
			calculate_total()
		}
	})
	function rem_list(_this){
		_this.closest('tr').remove()
	}
	$('#add_list').click(function(){
		// alert("TEST");
		// return false;

		var tr = $('#tr_clone tr.item-row').clone();
		var product = $('#product').val(),
			batch_no=$('#batch_no').val(),
			qty = $('#qty').val(),
			bprice = $('#bprice').val(),
			wprice=$('#wprice').val(),
			sprice=$('#sprice').val();
			
			if($('#list').find('tr[data-id="'+product+'"]').length > 0){
				alert_toast("Product already on the list",'danger')
				return false;
			}
			if(product == '' || qty == '' || bprice ==''){
				alert_toast("Please complete the fields first",'danger')
				return false;
			}
		tr.attr('data-id',product)
		tr.find('.pname b').html($("#product option[value='"+product+"']").attr('data-name'))
		tr.find('.pdesc b').html($("#product option[value='"+product+"']").attr('data-description'))
		tr.find('[name="product_id[]"]').val(product)
		tr.find('[name="batch_no[]"]').val(batch_no)
		tr.find('[name="qty[]"]').val(qty)
		tr.find('[name="bprice[]"]').val(bprice)
		tr.find('[name="wprice[]"]').val(wprice)
		tr.find('[name="sprice[]"]').val(sprice)
		var amount = parseFloat(bprice) * parseFloat(qty);
		tr.find('.amount').html(parseFloat(amount).toLocaleString('en-US',{style:'decimal',maximumFractionDigits:2,minimumFractionDigits:2}))
		$('#list tbody').append(tr)
		calculate_total()
		$('[name="qty[]"],[name="bprice[]"]').keyup(function(){
			calculate_total()
		})
		 $('#product').val('').select2({
		 	placeholder:"Please select here",
	 		width:"100%"
		 })
			$('#qty').val('')
			$('#bprice').val('')
			$('#wprice').val('')
			$('#sprice').val('')
			$('#batch_no').val('')
	})
	function calculate_total(){
		var total = 0;
		$('#list tbody').find('.item-row').each(function(){
			var _this = $(this).closest('tr')
		var amount = parseFloat(_this.find('[name="qty[]"]').val()) * parseFloat(_this.find('[name="bprice[]"]').val());
		amount = amount > 0 ? amount :0;
		_this.find('p.amount').html(parseFloat(amount).toLocaleString('en-US',{style:'decimal',maximumFractionDigits:2,minimumFractionDigits:2}))
		total+=parseFloat(amount);
		})
		$('#list [name="tamount"]').val(total)
		$('#list .tamount').html(parseFloat(total).toLocaleString('en-US',{style:'decimal',maximumFractionDigits:2,minimumFractionDigits:2}))
	}
	$('#manage-receiving').submit(function(e){
		e.preventDefault()
		start_load()
		if($("#list .item-row").length <= 0){
			alert_toast("Please insert atleast 1 item first.",'danger');
			end_load();
			return false;
		}
		$.ajax({
			url:'ajax.php?action=save_receiving',
		    method: 'POST',
		    data: $(this).serialize(),
			success:function(resp){
				if(resp==1){
					alert_toast("Data successfully added",'success')
					setTimeout(function(){
						location.href = "index.php?page=receiving"
					},1500)

				}
				if(resp==2){
					alert_toast("Data successfully Updated",'success')
					setTimeout(function(){
						location.href = "index.php?page=receiving"
					},1500)

				}
				
			}
		})
	})
</script>