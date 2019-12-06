<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		#postList{ 
		    margin-bottom:20px;
		}
		.list-item {
		    
		    margin: 5px 15px 2px;
		    padding: 2px;
		    font-size: 14px;
		    line-height: 1;
		    height: 200px;
		}
		.list-item h4 {
		    color: #0074a2;
		    margin-left: 50px;
		}
		.load-more {
		    margin: 15px 25px;
		    cursor: pointer;
		    padding: 10px 0;
		    text-align: center;
		    font-weight:bold;
		}
		.center {
			  display: block;
			  margin-left: auto;
			  margin-right: auto;
			  padding: 23px;

			  width: 20%;
			  height: 80%
			}
			.center-vi {
			  display: block;
			  margin-left: auto;
			  margin-right: auto;
			  

			 
			}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>

			<div id="postList">
			<?php
			// Include the database configuration file
			require 'dbConfig.php';

			// Get records from the database
			$query = $db->query("SELECT * FROM image ORDER BY id_image DESC LIMIT 5");

			if($query->num_rows > 0){ 
			    while($row = $query->fetch_assoc()){
			        $postID = $row["id_image"];
			?>
			    <div class="list-item">
			    	<img src="images/<?php echo $row['image_name']; ?>" class="center"/>
			    	</div>
			<?php } ?>
			    <div class="load-more " lastID="<?php echo $postID; ?>" style="display: none;">
			        <img src="loading.gif" class="center-vi"/>
			    </div>
			<?php } ?>
			</div>




		<script type="text/javascript">
			$(document).ready(function(){
				document.body.scrollTop = 0;
  				document.documentElement.scrollTop = 0;

			    $(window).scroll(function(){

			    	
			    	
			        var lastID = $('.load-more').attr('lastID');
			        var a=$(document).height() - $(window).height();
			        var b=$(window).scrollTop() + $(window).height();
			       
			        if($(document).height() <= $(window).scrollTop() + $(window).height()+ 10 && (lastID != 0)){
			        	
			            $.ajax({
			                type:'POST',
			                url:'getData.php',
			                data:'id='+lastID,
			                beforeSend:function(){
			                    $('.load-more').show();
			                },
			                success:function(html){
			                	
			                	

			                    $('.load-more').remove();

			                    $('#postList').append(html);
			                }
			            });
			        }
			    });
			});
			</script>
		</script>
</body>
</html>