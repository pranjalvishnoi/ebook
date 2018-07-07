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
	
	.container{width:100%;height:1960px;}  
	
	.left{width:25%;height:100%;float:left;background-color:powderblue;
	}
	
	.body{width:28%;float:left;margin-left:3%;}   
	
	.right{width:40%;float:left;margin-top:20px;} 
	
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
	
	
	
	</style>
	
	
<% String chk="flase";
if(session.getAttribute("suser")==null)
chk="false";	
else
	chk="true";
 %>
 	
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

function check()
{
	var cvar="<%=chk%>";
	
	if(cvar=="false")

	{alert("login to download");
	window.location.reload();
	
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
<input type='hidden' name='formpPage' value='Admin.jsp' />
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
<input type='hidden' name='formpPage' value='Admmin.jsp' />
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


<a onclick="check()" href="ftp://192.168.0.44/pub/harrypotter/Book%201%20-%20The%20Philosopher%20s%20Stone.pdf"> <img src="hp1.jpg" class='top' /> </a>
 <a onclick="check()" href="ftp://192.168.0.44/pub/harrypotter/Book%202%20-%20The%20Chamber%20of%20Secrets.pdf"> <img src="hp2.jpg" class='top' /> </a>
 <a href="hp3.jsp"> <img src="hp3.jpg" class='top' /> </a>
 <a href="hp4.jsp"> <img src="hp4.jpg" class='top' /> </a>
 <a href="hp5.jsp"> <img src="hp5.jpg" class='top' /> </a>
  <a href="hp6.jsp"> <img src="hp6.jpg" class='top' /> </a>
 <a href="hp7.jsp"> <img src="hp7.jpg" class='top' /> </a>

</div>







<div class='right'>
<a onclick="check()" href="ftp://192.168.0.44/pub/harrypotter/Book%201%20-%20The%20Philosopher%20s%20Stone.pdf"> <h3>Harry Potter and the Philosopher's Stone</h3> </a> 
<p > <u> Author : J.K Rowling </u>
<br>
The plot follows Harry Potter, a young wizard who discovers his magical heritage as he makes close
 friends and a few enemies in his first year at the Hogwarts School of Witchcraft and Wizardry. With 
 the help of his friends, Harry faces an attempted comeback by the dark wizard Lord Voldemort, who
  killed Harry's parents, but failed to kill Harry when he was just 15 months old.
</p>


<br>
<a onclick="check()" href="ftp://192.168.0.44/pub/harrypotter/Book%202%20-%20The%20Chamber%20of%20Secrets.pdf"> <h3>Harry Potter and the Chamber of Secrets</h3> </a> 
<p > <u> Author : J.K Rowling</u>
<br>
Harry Potter and the Chamber of Secrets is a fantasy novel written by British author J. K. Rowling and
 the second novel in the Harry Potter series. The plot follows Harry's second year at Hogwarts School
  of Witchcraft and Wizardry, during which a series of messages on the walls of the school's corridors
   warn that the "Chamber of Secrets" has been opened and that the "heir of Slytherin" would kill all
    pupils who do not come from all-magical families.
 
</p>


<br>
<a href="Nar.jsp"> <h3>Harry Potter and the Prisoner of Azkaban</h3> </a> 
<p > <u> Author : J,K Rowling </u>
<br>
Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and
 the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year
  at Hogwarts School of Witchcraft and Wizardry. Along with friends Ronald Weasley and Hermione Granger,
   Harry investigates Sirius Black, an escaped prisoner from Azkaban who they believe is one of Lord
    Voldemort's old allies.
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
Hello<%=user %>
<form action='controllerr' method='post' id='signoutform'>
<input type='hidden' name='form' value='signOut' />
<input type='hidden' name='formpPage' value='Admin.jsp' />
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