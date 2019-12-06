<?php
if(!empty($_POST["id"])){

//Include DB configuration file
require 'dbConfig.php';

//Get last ID
$lastID = $_POST['id'];

//Limit on data display
$showLimit = 6;

//Get all rows except already displayed
$queryAll = $db->query("SELECT COUNT(*) as num_rows FROM image WHERE id_image < ".$lastID." ORDER BY id_image DESC");
$rowAll = $queryAll->fetch_assoc();
$allNumRows = $rowAll['num_rows'];



//Get rows by limit except already displayed
$query = $db->query("SELECT * FROM image WHERE id_image < ".$lastID." ORDER BY id_image DESC LIMIT ".$showLimit);

if($query->num_rows > 0){
    
    while($row = $query->fetch_assoc()){ 
        $postID = $row["id_image"]; ?>
<div class="list-item"><img src="images/<?php echo $row['image_name']; ?>" class="center"/></div>
<?php }  ?>
<?php if($allNumRows > $showLimit){ ?>
    <div class="load-more" lastID="<?php echo $postID; ?>" style="display: none;">
        <img src="loading.gif" class="center-vi"/>
    </div>
<?php }else{ ?>
    <div class="load-more" lastID="0">
        That's All!
    </div>
<?php }
}else{ ?>
    <div class="load-more" lastID="0">
        That's All!
    </div>
<?php
    }
}
?>