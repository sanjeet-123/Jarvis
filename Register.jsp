<%-- 
    Document   : Register
    Created on : Aug 30, 2023, 8:37:51 AM
    Author     : Sanjeet kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
           
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    
    </head>
    <body <div class="#e3f2fd blue lighten-5"></div>

        <div class="container">

            <div class="card">
                        <center><h1>Registration</h1></center>

      <div class="row">

          <form class="col s6" action="signup" method="post" id="myform">

      <div class="row">
        <div class="input-field col s6">
          <i class="material-icons Postfix">account_circle
              <input id="first_name"  name="fnm" type="text" class="validate" placeholder="First name">
          </i>
        </div>
        <div class="input-field col s6">
            <i class="material-icons Postfix">account_circle
                <input id="Last_name" name="lnm" type="text" class="validate" placeholder="Last name"></i>

        </div>
      </div>
        <div class="input-field col s6">
          <i class="material-icons Postfix">mode_edit
          <input Placeholder="Are You Disabled Person" id="disabled" type="text" class="validate"></i>
        
      </div>
      <div class="row">
        <div class="input-field col s12">
         <i class="material-icons Postfix">person_pin
             <input id="password" type="password" name="pnm" class="validate" placeholder="Password">
          </i>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
                      <i class="material-icons Postfix">email
                      <input id="email" name="eid" type="email" class="validate" placeholder="Email Id"></i>
          
        </div>
      </div>
<!--      <div class="row">
        <div class="col s12">
          This is an inline input field:
          <div class="input-field inline">
              <i class="material-icons Prefix">email
              <input id="email_inline" type="email" class="validate"></i>
          </div>
        </div>
      </div>-->
              <button type="submit">Submit</button>
    
    </form>
          <div class="signup-image">
		<figure>
	         	<img src="images/pio.jpg" alt="sing up image">
		</figure>
              <a href="SignIn.jsp"><h5>LoginIn Now?</h5></a>

  </div>
          
            </div>
        </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script>
            $(document).ready(function(){
                console.log("ready");
               $("#myform").on('submit',function(event){
                  event.preventDefault(); 
                  var f=$(this).serialize();
                  console .log(f);
                  $.ajax({
                      url="signup",
                      type='post',
                      data=f,
                      success: function(data,textStatus){
                          console.log(data);
                          console.log("success");
                      },
                      error: function(data,textStatus,errorThrown){
                          console.log(data);
                          console.log("error");
                      }
                  });
               });
            });
        </script>
        
    </body>
</html>
