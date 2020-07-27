<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


  
<h3>Login Form</h3>  
<%  
String profile_msg=(String)request.getAttribute("profile_msg");  
if(profile_msg!=null){  
out.print(profile_msg);  
}  
String login_msg=(String)request.getAttribute("login_msg");  
if(login_msg!=null){  
out.print(login_msg);  
}  
 %>  
 <br/>  
<form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="http://localhost:8080/auth/realms/Demo/protocol/openid-connect/token" method="post">
               
               <div class="form-group">
                    <label for="client_id" class="control-label">client_id</label>

                        <input tabindex="1" id="client_id" class="form-control" name="client_id" value=""  type="text" autofocus autocomplete="off" />
                </div>
               
                <div class="form-group">
                    <label for="username" class="control-label">Username or email</label>

                        <input tabindex="2" id="username" class="form-control" name="username" value=""  type="text" autofocus autocomplete="off" />
                </div>

                <div class="form-group">
                    <label for="password" class="control-label">Password</label>
                    <input tabindex="3" id="password" class="form-control" name="password" type="password" autocomplete="off" />
                </div>
                
                 <div class="form-group">
                    <label for="grant_type" class="control-label">grant_type</label>

                        <input tabindex="3" id="grant_type" class="form-control" name="grant_type" value=""  type="text" autofocus autocomplete="off" />
                </div>
                

                <div class="form-group login-pf-settings">
                    <div id="kc-form-options">
                        </div>
                        <div class="">
                        </div>

                  </div>
                  
                  <script>
    $(document).ready(function(){
        $("#login_iframe").on("load", function(){
            location.href = "http://localhost:8083/test/index.jsp";
        });
    })
    </script>
                  

                  <div id="kc-form-buttons" class="form-group">
                      <input type="hidden" id="id-hidden-input" name="credentialId" />
                      <input tabindex="4" class="btn btn-primary btn-block btn-lg" name="login" id="kc-login" type="submit" value="Log In"/>
                  </div>
            </form>
            

<ul>
<li>To a<a href="roles/Index.jsp">login or sign up to continue</a>
</ul>


</body>

</html>