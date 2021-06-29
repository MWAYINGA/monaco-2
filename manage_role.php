<?php 
include('db_connect.php');
if(isset($_GET['id'])){
$role = $conn->query("SELECT * FROM user_role where role_id =".$_GET['id']);
foreach($role->fetch_array() as $k =>$v){
	$meta[$k] = $v;
}
$sql_for_privilege="SELECT role_privileges_id FROM user_role_privieges urp 
WHERE urp.user_role_id =".$meta['role_id'];
$privilege_per_role=$conn->query($sql_for_privilege);
$privilege_per_role_in_array1=$privilege_per_role->fetch_assoc();
$privilege_per_role_in_array=explode(",",$privilege_per_role_in_array1['role_privileges_id']);
}
$all_privilage=$conn->query("SELECT * FROM role_privieges ORDER BY role_privieges_name asc");
?>
<div class="container-fluid">
	
	<form action="" id="manage-user">
		<input type="hidden" name="role_id" value="<?php echo isset($meta['role_id']) ? $meta['role_id']: '' ?>">
		<div class="form-group">
			<label for="RoleName">Role Name</label>
			<input type="text" name="RoleName" id="RoleName" class="form-control" value="<?php echo isset($meta['role_name']) ? $meta['role_name']: '' ?>" required>
		</div>
		<div class="form-group">
			<label for="Description">Description</label>
			<input type="text" name="Description" id="Description" class="form-control" value="<?php echo isset($meta['Description']) ? $meta['Description']: '' ?>">
		</div>
		<!-- <div class="form-group">
			<label for="password">Password</label>
			<input type="password" name="password" id="password" class="form-control" value="<?php echo isset($meta['password']) ? $meta['password']: '' ?>" required>
		</div> -->
		<?php if(!isset($_GET['mtype'])): ?>
		<div class="form-group">
			<label for="type">Role Privilage</label>
            <div class="card">
            <?php
            while ($row=$all_privilage->fetch_assoc()):
				$id=$row["role_privieges_id"];
				$checked= '';
                if (in_array($id,$privilege_per_role_in_array)) {
                    $checked= 'checked';
                }
            ?>
                <div class="form-group">
					<input type="checkbox" name="role_privilages[]" id="" value="<?=$row["role_privieges_id"]?>" <?php echo $checked?>><?=$row["Description"]?> &nbsp &nbsp&nbsp
				</div>
            <?php
            endwhile;
            ?>
            </div>
			<select name="type" id="type" class="custom-select">
				<option value="1" <?php echo isset($meta['type']) && $meta['type'] == 1 ? 'selected': '' ?>>Admin</option>
				<option value="2" <?php echo isset($meta['type']) && $meta['type'] == 2 ? 'selected': '' ?>>Cashier</option>
			</select>
		</div>
		<?php endif; ?>
	</form>
</div>
<script>
	$('#manage-user').submit(function(e){
		e.preventDefault();
		start_load()
		$.ajax({
			url:'ajax.php?action=save_user',
			method:'POST',
			data:$(this).serialize(),
			success:function(resp){
				if(resp ==1){
					alert_toast("Data successfully saved",'success')
					setTimeout(function(){
						location.reload()
					},1500)
				}
			}
		})
	})
</script>