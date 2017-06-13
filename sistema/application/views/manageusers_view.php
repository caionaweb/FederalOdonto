<?php 
	include('header.php'); 
	echo "<link rel=\"stylesheet\" type=\"text/css\" href='".base_url()."css/style.css'>";
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
   <title>Users - System Administrator </title>
<link rel="shortcut icon" href="<?php echo base_url(); ?>images/upcd-20140224-favicon.ico">
	<script type="text/javascript">
		function confirmDelete(choice){
			var conf = confirm("Delete this user?");
			if(conf == true){
				var url = "http://localhost/DentISt/index.php/deleteuser/delete/" + choice;
				window.location = url;			
			}
		}

	</script>

<style>
.altcolor tr:nth-child(even) {
    background-color: #EEAEEE;
}
</style>

 </head>
 <body>
<?php include('navigation.php'); ?>
<div class="maindiv">
<h3 align=center>Users </h3>

<form action="<?php echo base_url().'index.php/searchuser'?>" method=post>

<input type="text" name="searchuser" id="searchuser" class="search"> <input type="submit" value="Search" name="searchbtn"><br><br>


<hr width="95%">
<br>
	<center>
		<table class="altcolor" style="width: 90%;" color="violet" cellpadding=5px>
			<tr class="header">
				<td class="tab" align="center"> User
				<td class="tab" align="center"> Username
				<td class="tab" align="center"> Role
				<td class="tab" align="center"> Section
				<td class="tab"align="center"> Options
			</tr>
			<?php
				if($users == FALSE) echo "users:".$users;
				else{
					foreach($users as $row){
						$uname = $row->username;
						echo "<tr class='tab'><td class='tab'>".$row->userFName." ".$row->userLName;
						echo "<td class='tab'>".$row->username;
						echo "<td class='tab'>";
						foreach($users2[$uname] as $row2){
							echo $row2->role_type."<br>";
						}
						echo "<td class='tab'>";
						foreach($users2[$uname] as $row2){
							echo $row2->role_section."<br>";
						}
						echo "<td class='tab'><a href='".base_url()."index.php/edituser/edit/".$row->userID."'>Edit</a>&nbsp;<a href=# onClick='confirmDelete(".$row->userID.")'>Delete</a><input type='hidden' name='userID' value='".$row->userID."'></tr>";
					}
				}
			?>
		</table>
		
	</center>	
</form>
</div>
 </body>
</html>


