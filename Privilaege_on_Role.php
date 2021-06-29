<?php
    include "db_connect.php";
    $sql="SELECT u.name,u.role,ur.role_name,urp.role_privileges_id,rp.role_privieges_name FROM users u 
            INNER JOIN user_role ur ON u.role=ur.role_id
            INNER JOIN user_role_privieges urp ON urp.user_role_id=ur.role_id
            INNER JOIN role_privieges rp ON rp.role_privieges_id=urp.role_privileges_id
            WHERE u.id='".$_SESSION['login_id']."'";
    $Privi=mysqli_query($conn,$sql);
    ?>
        <script>
            $('.newPrivilegeBased a').hide()
        </script>
    <?php
    if ($Privi) {
        while ($row=mysqli_fetch_array($Privi)) {
           ?>
           <script>
            if ($('.newPrivilegeBased').find('a[data-privilageRequired="<?php echo $row['role_privieges_name']?>"]')) {
                // $('a[data-privilageRequired="<?php echo $row["role_privieges_name"]?>"]').css('display','block')
                $('a[data-privilageRequired="<?php echo $row["role_privieges_name"]?>"]').show()
            }
           </script>
           <?php
        }
    }


?>