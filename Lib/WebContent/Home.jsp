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
	height:100%;
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
	
	.container{width:100%;
	height:1100px;
	posotion:relative;}  
	
	.left{width:25%;float:left;min-height:100%;background-color:powderblue;
	}
	
	.body{width:28%;float:left;margin-left:3%;}   
	
	.right{width:40%;float:left;min-height:100%;margin-top:20px;} 
	
	.top{width:210px;
	margin-top:20px;
	height:250px;
	vertical-align:text-top;}
	

 #foot{

background-color:powderblue;
}

 #lfoot{
margin-left:65%;	
}	</style>
	
 	
	
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
		if(isNaN(obj) || obj.length!=10 )
			{
			alert("enter 10 digit number only")
			}
	
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
<input type='hidden' name='formpPage' value='Home.jsp' />
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
<input type='hidden' name='formpPage' value='Home.jsp' />
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
 <a href="sucess.jsp"> <img src="novel.jpg" class='top' /> </a>
 <a href="sm.jsp"> <img src="study.jpg" class='top' /> </a>
 <a href="travel.jsp"> <img src="travel.jpg" class='top' /> </a>
 <a href="mag.jsp"> <img src="mag.jpg" class='top' /> </a>	
</div>







<div class='right'>
<a href="sucess.jsp"> <h3>Novels</h3> </a> 
<p >
 Download novels Books for FREE. All formats available for PC, Mac, eBook Readers
  and other mobile devices. Large selection and many more categories to choose from.
</p>
<br><br><br><br><br><br>
<a href="sm.jsp"> <h3>Study Materials</h3> </a> 
<p >
 Get complete material of study Books on your mobile. Get it for free. You can download 
 the material in pdf form. Download material of those topic which is required by you.

<br><br><br><br><br><br><br><br><br>
<a href="travel.jsp"> <h3>Travel</h3> </a> 
<p >
Looking for the best travel books and guides to plan your trip with? Here are all the
 books to help you travel cheaper, better, and longer.
</p>

<br><br><br><br><br><br>
<a href="mag.jsp"> <h3>Magzines</h3> </a> 
<p >
 Browse an extensive collection of English, Hindi, Tamil, Telugu, Malayalam, Kannada,
  Bengali, Marathi, Gujarati, Punjabi, Oriya and Urdu language magazines.
</p>
</div>


</div>


<div id="foot">
<br>
<div id="lfoot">
For any query or suggestion leave an : <a href="mailto:someone@example.com?Subject=Hello%20again" target="_top">e-mail</a>
</div><br>
</div>



<div class="view" id="view">
<%
String user=(String)session.getAttribute("suser");
%>
<marquee behavior="alternate" > Welcome to e-book portal!! </marquee><br>
Hello <%=user %>
<form action='controllerr' method='post' id='signoutform'>
<input type='hidden' name='form' value='signOut' />
<input type='hidden' name='formpPage' value='Home.jsp' />
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