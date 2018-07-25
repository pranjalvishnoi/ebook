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
	
	.container{width:100%;height:1400px;}  
	
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
<input type='hidden' name='formpPage' value='sucess.jsp' />
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
 <a href="Admin.jsp"> <img src="hp.jpg" class='top' /> </a>
 <a href="Nar.jsp"> <img src="Nar.jpg" class='top' /> </a>
 <a href="shiva.jsp"> <img src="shiva.jpg" class='top' /> </a>
 <a href="sher.jsp"> <img src="sher.jpg" class='top' /> </a>
 <a href="two.jsp"> <img src="two.jpg" class='top' /> </a>
 
</div>







<div class='right'>
<a href="Admin.jsp"> <h3>Harrypotter</h3> </a> 
<p > <u> Author : J.K Rowling </u>
<br>
Happy Potter is a series of fantasy novels written by British author J.K Rowling. Thenovels chronical
the life of a young wizard, Harry Potter, ans his friends Hermione Granger and Ron Weasley, all of
whome are students at Hogwards School of Witchcraft and Wizardry.
</p>
<br><br><br>
<a href="Nar.jsp"> <h3>The Chronicles of Narnia</h3> </a> 
<p > <u> Author : C.S Lewis </u>
<br>
Set in the fictional realm of Narnia, a fantasy world of magic and talking animals,
the series narrates the adventures of various children who play central roles in the unfolding 
history of that world. Except in The Horse and His Boy, the protagonists are all children from the 
real world, magically transported to Narnia. The books span the entire history of
Narnia, from its creation in The Magician's Nephew to its eventual destruction in The Last Battle.
</p>

<br>
<a href="shiva.jsp"> <h3>Shiva Trilogy</h3> </a> 
<p > <u> Author : Amish </u>
<br>
The Shiva Trilogy is a series of three fantasy myth novels by an Indian author Amish Tripathi, released
 annually from 2010 to 2013. The Shiva Trilogy has become the fastest selling book series in the history
  of Indian publishing, with 2.5 million copies in print and over Rs 70 crore in sales. The book is 
  about story of Shiva, a man whom legend turned into a God. </p>


<br>
<a href="sher.jsp"> <h3>Sherlock Holmes</h3> </a> 
<p > <u> Author : Conan Doyle </u>
<br>
Sherlock Holmes is a fictional consulting detective in London ~1880-1914 created by Scottish author and
 physician Sir Arthur Conan Doyle. Holmes, master of disguise, reasoned logically to deduce clients' 
 background from their first appearance. He used fingerprints, chemical analysis, and forensic science.
</p>


<br><br>
<a href="two.jsp"> <h3>Two States: The story of my marriage</h3> </a> 
<p > <u> Author : Chetan Bhagat </u>
<br>
Love marriages around the world are simple: Boy loves girl. Girl loves boy. They get married. In India,
 there are a few more steps: Boy loves Girl. Girl loves Boy. Girl's family has to love boy. Boy's family
  has to love girl. Girl's Family has to love Boy's Family. Boy's family has to love girl's family.
   Girl and Boy still love each other. They get married.
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
<input type='hidden' name='formpPage' value='sucess.jsp' />
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