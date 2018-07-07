<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home</title>
</head>
<style> 

 
	body {  
	background: linear-gradient(to right,powderblue ,white);  
	}


	#head{
	display:block;
	text-align:right;
	border-style: groove;
	background-color:powderblue;

	border-color:powderblue;
	border-width:2px;
	position:fixed;
	top: 0;
	left: 0;
	right: 0;
	width:100%;
	opacity:.8;
	transition: width 2s, height 2s, transform 2s; 
	} 
 	
	#nf{
	display:none;
	text-align:left;
	}
	
	.view{
	display:none;
	text-align:right;
	border-style: groove;
	background-color:powderblure;
	border-color:powderblue;
	border-width:2px;
	position:fixed;
	top: 0;
	left: 0;
	right: 0;
	width:100%;
	opacity:.8;
	}
	
	.container{width:100%}  
	
	.left{width:25%;height:100%;float:left;background-color:powderblue;
	}
	
	.body{width:28%;float:left;margin-left:3%;}   
	
	.right{width:40%;float:left;margin-top:20px;} 
	
	.top{width:210px;
	margin-top:20px;
	height:250px;
	vertical-align:text-top;}
	
	
	
	
	</style>
	
	
	
<% String re=(String)request.getAttribute("result");
if(re=="false")
{%>
<script type="text/javascript">
alert("invalid username or password");
</script>
<% } %>



<%
if(re=="newUserAdded")
{%>
<script type="text/javascript">
alert("Welcome to e-portal Login to continue");
</script>
<% } %>


<% 
if(re=="newUserNotAdded")
{%>
<script type="text/javascript">
alert("user not Added");
</script>
<% }




request.setAttribute("result", "true");%>



<script type="text/javascript">
function reg(){
					if(document.getElementById("ncreate").value=="Signup"){
					document.getElementById("nf").style.display="block";
					document.getElementById("ncreate").value="^";
					}
					else
					{
					document.getElementById("nf").style.display="none";
					document.getElementById("ncreate").value="Signup";
					}
				}
function val(eid)
{
	var obj=document.getElementById(eid).value;

		if(obj==null || obj=="" || obj.trim()==""){
			alert("empty data");}
	
}

</script>




<body>
<br> <br> <br> 

<!-- <script id="x">
var date=new Date();
var month=date.getMonth()+1;
document.write(date.getDate()+"/"+month +"/"+date.getFullYear());
</script>
 -->
<nav class="head" id="head">
<marquee behavior="alternate" > Welcome to e-book portal!! </marquee>
<%application.setAttribute("defaultUser", "default"); %>

<form id="loginForm" action="controllerr" method="post" >
UserName <input autofocus type="text" name="userId" placeholder="enter username..." align="right"/> 
Password <input type="password" name="password" placeholder="enter password..." align="right" /> 
<input type='hidden' name='form' value='logIn' />
<input type='hidden' name='formpPage' value='mag.jsp' />
<!-- Admin <input type="radio" name="who" value="admin">
Issuer <input type="radio" name="who" value="issuer"> -->
<input type="submit" value="Login" />  
</form>
<input type="submit" id='ncreate' value="Signup" onclick="reg()"/>
<br>
<div id="myLoc"></div>

<br>
<form action='controllerr' method='post' id='nf'>
<input type='hidden' name='form' value='newUser' />
<input type='hidden' name='formpPage' value='mag.jsp' />
UserName <input type='text' name='nuserId' required/>
<br><br>Password <input type='password' name='npassword' required   />
<br><br>
Mob. No. <input  id='en' name='mob' onBlur='val(this.id)'/>
<br><br>Email <input type='email' name='email' />
<br> <br>
DOB <input type='date' name='date' />
<br>
<br>
<input type='submit' value='Create' />
</form>
</nav>
<br><br>

 <div class="container">
 <div class='left'>
 Categories<br> <br>
 
 <a href="sucess.jsp"> Novel </a>
 <br> <br>
 <a href="travel.jsp"> Travel </a>
 <br> <br>
 <a href="sm.jsp"> Study Material </a>
 <br> <br>
 <a href="mag.jsp"> Magzines </a>
 </div>


 <div class='body'>
 <a href="Admin.jsp"> <img src="hp.jpg" class='top' /> </a>
 <a href="Admin.jsp"> <img src="kk.jpg" class='top' /> </a>
</div>







<div class='right'>
<a href="Admin.jsp"> <h3>Harrypotter</h3> </a> 
<p > <u> Author : J.K Rowling </u>
<br>
 Happy Potter is a series of fantasy novels written by British author J.K Rowling. Thenovels chronical
 the life of a young wizard, Harry Potter, ans his friends Hermione Granger and Ron Weasley, all of
 whome are students at Hogwards School of Witchcraft and Wizardry.
</p>
</div>


</div>

<div class="view" id="view">
<%
String user=(String)session.getAttribute("suser");
%>
<marquee behavior="alternate" > Welcome to e-book portal!! </marquee><br>
Hello<%=user %>
<form action='controllerr' method='post' id='signoutform'>
<input type='hidden' name='form' value='signOut' />
<input type='hidden' name='formpPage' value='mag.jsp' />
<input type='submit' value='Signout'/>;
</form>
</div>
<% 
if(session.getAttribute("suser")!=null)
{%>
<script type="text/javascript">
document.getElementById("head").style.display="none";
document.getElementById("view").style.display="block";

</script>
<% } %>

</body>
</html>