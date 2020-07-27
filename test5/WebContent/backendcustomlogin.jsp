<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>hello world of java</h3>
<%

String us_name = request.getParameter("us_name");

String us_pass = request.getParameter("us_pass");


%>
<script>

window.onload = function () {
	keyclockhit();
}
function keyclockhit (){
	var clientId='testApp';
	
	var userName=<%=us_name%>;
	var password=<%=us_pass%>;
	alert("username and password is --"+userName +" "+password);
    var creds = 'client_id=testApp&grant_type=password&username='+userName+'&password='+password;
    alert(creds);
console.log(creds);
	
	
    	  $.ajax({
    	      url: 'http://localhost:8080/auth/realms/Demo/protocol/openid-connect/token',
    	      data: creds,
    	      headers: {'Content-Type':'application/x-www-form-urlencoded'},
    	      type: 'POST',
    	      success: function(data){
    	    	  console.log(data);
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