<?php 
	include('header.php'); 
	include('navigation.php');
	echo "<link rel=\"stylesheet\" type=\"text/css\" href='".base_url()."css/style.css'>";
	//echo "<script type\"text/javascript\" src=\"".base_url()."js/dynamic.js\"></script>"
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
   <title>Edit User - System Administrator</title>
<link rel="shortcut icon" href="<?php echo base_url(); ?>images/upcd-20140224-favicon.ico">
	<script type="text/javascript">
		function restrict2(which2, itemx){
			alert(itemx);
		}
	</script>
 </head>
<?php 
	//$session_data = $this->session->userdata('logged_in');
     	//$usernamelog = $session_data['username'];
	/*$lname = "";
	$fname = "";
	$mname = "";
	$role = "";
	$section = "";
	$uname = "";

	*/

		foreach($info as $row){
		$lname = $row->userLName;
		$fname = $row->userFName;
		$mname = $row->userMName;
		$role = $row->role_type;
		$section = $row->role_section;
		$roledate = $row->role_date;
		//$role = $row->role_type;
		//$section = $row->role_section;
		$uname = $row->username;
		$secques = $row->secret_question;
		$secans = $row->secret_answer;
		//$pword = $row->userpword;
		}

	
?>
 <body>
 
<div class="maindiv">
   <h3 align=center>My Profile</h3>
<br><br>

   <form id="EDITUSER" name="EDITUSER" action="<?php echo base_url().'index.php/changepassword';?>" method="post">
	
	<table align="center" width="70%">
	<tr>
		<td>Name:
		<td><b><?php echo "$fname $mname $lname"; ?></b>
	</tr>
	<tr>
		<td colspan=3> <hr width=100% align="center" color="#d3d3d3">
	</tr>
	<tr>
		<td>Section/Role: 
		<td><b>
		<?php
		//print_r($role);
		/*foreach($role as $row){
			$role2[] = $row['role_type'];
			$section[] = $row['role_section'];
		}*/
		echo "$section - $role";
				
		?>
	
		</b></td>
	</tr>
	<tr>
		<td colspan=3> <hr width=100% align="center" color="#d3d3d3">
	</tr>
	<tr>
		<td><label for="username">Username:</label>
     		<td><b><?php echo $uname; ?></b>
     	</tr>
	<tr>
		<td colspan=3> <hr width=100% align="center" color="#d3d3d3">
	</tr>
     	<tr>
		<td><label for="password">Date user is created:</label>
     		<td><b><?php echo $roledate; ?></b>
     	</tr>
	<tr>
		<td colspan=3> <hr width=100% align="center" color="#d3d3d3">
	</tr>
	</table><br>
     <input type="submit" value="Change Password"/> <input type="button" value="Back"/>
   </form>
</div>
 </body>
</html>


