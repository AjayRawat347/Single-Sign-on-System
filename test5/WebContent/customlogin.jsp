<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
</head>
<body>

	<form method="post" action="backendcustomlogin.jsp">

		<center>
			<h2 style="color: green">JSP Login Example</h2>
		</center>

		<table border="1" align="center">

			<tr>

				<td>Enter Your Name :</td>

				<td><input type="text" id="username" name="us_name" /></td>

			</tr>

			<tr>

				<td>Enter Your Password :</td>

				<td><input type="password" id="password" name="us_pass" /></td>

			</tr>
			<tr>

				<td></td>

				<td><input type="button" value="submit" onclick="keyclockhit()" /></td>
		</table>

	</form>



	<script>
 //var refresh_token;
 
/* window.onload = function () {
	keyclockhit();
} */
function keyclockhit (){
	//var clientId='testApp';
	
	var userName=$('#username').val();
	var password=$('#password').val();
	alert("username and password is --"+userName +" "+password);
    var creds = 'client_id=testApp4&client_secrer=99ab536c-c11f-4789-8992-1055e9af2d86t&grant_type=password&username='+userName+'&password='+password;
    alert(creds);
console.log(creds);
	
	
    	  $.ajax({
    	      url: 'http://localhost:8080/auth/realms/Demo/protocol/openid-connect/token',
    	      data: creds,
    	      headers: {'Content-Type':'application/x-www-form-urlencoded'},
    	      type: 'POST',
    	      success: function(data){
    	    	  //alert(data.access_token);
    	    	  console.log(data);
    	    	  alert(data.access_token);
    	    	   //var access_token=data.access_token;
    	    	   var access_token=data.access_token;
    	    	  keyclockhit_next(access_token);
    	        /* localStorage.setItem('currentUser', JSON.stringify(data));
    	        window.location.replace("https://localhost:8443/sensorcloud-2.2.1-SNAPSHOT/dashboard.html"); */
    	      },
    	      error: function() {
    	        alert("Invalid username or password");
    	      }
    	    });
	
}



function keyclockhit_ref (refresh_token){

    var creds = 'client_id=testApp4&grant_type=refresh_token&refresh_token='+refresh_token;
    alert(creds);
console.log(creds);
	
	
    	  $.ajax({
    	      url: 'http://localhost:8080/auth/realms/Demo/protocol/openid-connect/token',
    	      data: creds,
    	      headers: {'Content-Type':'application/x-www-form-urlencoded'},
    	      type: 'POST',
    	      success: function(data){
    	    	  alert('kapil');
    	    	  alert(data.access_token);
    	    	  console.log(data.access_token);
    	    	  window.location.replace('/test/roles/Index.jsp');
    	        /* localStorage.setItem('currentUser', JSON.stringify(data));
    	        window.location.replace("https://localhost:8443/sensorcloud-2.2.1-SNAPSHOT/dashboard.html"); */
    	      },
    	      error: function() {
    	        alert("Invalid username or password");
    	      }
    	    });
	
 }
function keyclockhit_next (access_token){

 
  	  $.ajax({
    			  
  			  url: 'http://localhost:8080/auth/realms/Demo/protocol/openid-connect/token',  
    			  
    	      headers: { Authorization : 'bearer' +  access_token},
    	      type: 'POST',
    	      
    	      success: function(data){
    	    	  console.log(data);
    	    	  window.location.replace('/test5/roles/Index.jsp');
    	        /* localStorage.setItem('currentUser', JSON.stringify(data));
    	        window.location.replace("https://localhost:8443/sensorcloud-2.2.1-SNAPSHOT/dashboard.html"); */
    	      },
    	      error: function() {
    	        alert("Invalid username or password");
    	      }
    	    });
	
 }



</script>



</body>
</html>