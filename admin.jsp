<%@ page import="java.sql.*"%>

<%

String email=request.getParameter("uname");
String pass=request.getParameter("psw1");


try{
    Connection con=null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@raki:1521:xe","system","raki");
    PreparedStatement ps=con.prepareStatement("select * from admin where email=? and password=? ");
    PreparedStatement ct=con.prepareStatement("Select count(*) from register");
    PreparedStatement ad=con.prepareStatement("Select count(*) from emp");
   

    ps.setString(1,email);
    ps.setString(2,pass);
    ResultSet x=ps.executeQuery();
  
    ResultSet c=ct.executeQuery();
    ResultSet a=ad.executeQuery();
    a.next();
    c.next();
    out.println(pass);
   
       


%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif;}

.sidebar {
  height: 100%;
  width: 160px;
  position: fixed;
  z-index: 10;
  top: 0;
  left: 0;
  background-color: rgb(82, 6, 25);
  overflow-x: hidden;
  padding-top: 16px;
}

.sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
}
.sidebar p {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  cursor: pointer;
  display: block;
}
.sidebar p:hover {
  color: #f1f1f1;
}
.sidebar a:hover {
  color: #f1f1f1;
}
.sidebar .active{
  color: aqua;
}

.logo {
  width: 11cm;
  height: 3cm;
  margin-left: 0.5cm;
  margin-top: 0;
}

.nav{
  height: 70px;
  width: 100%;
  margin-left: 160px;
  background-color: darkturquoise;
  top: 0;
  left: 0;
  position: fixed;
}
.nav h2{
  padding-left: 10px;
  top: 0;
  position: relative;
  font-weight: bold;
  padding-top: 10px;
}
.nav a {
  text-decoration: none;
  font-weight: bold;
 /* float: right;
  padding-right: 100px;
  position: relative;*/

}
.nav p{
  font-size: large;
  float: right;
  padding-right: 50px;
  top: 0;
}

/*.main {
  margin-left: 160px;  Same as the width of the sidenav 
  padding: 0px 10px;
}*/


.content {
  margin-left: 150px;
  position: relative;
  margin-top: 9vh;
  min-height: 10vh;
  top: 0;
  left: 0;
  max-height: fit-content;
  background: #f1f1f1;
}

.content .cards {
  padding: 20px 15px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
}

.content .cards .card {
  width: 250px;
  height: 150px;
  background: white;
  margin: 20px 10px;
  display: flex;
  align-items: center;
  justify-content: space-around;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

.content .content-2 {
  min-height: 60vh;
  display: flex;
  justify-content: space-around;
  align-items: flex-start;
  flex-wrap: wrap;
}

.content .content-2 .recent-payments {
  min-height: 50vh;
  flex: 5;
  background: white;
  margin: 0 25px 25px 25px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  display: flex;
  flex-direction: column;
}

.content .content-2 .new-students {
  flex: 2;
  background: white;
  min-height: 50vh;
  margin: 0 25px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  display: flex;
  flex-direction: column;
}

.content .content-2 .new-students table td:nth-child(1) img {
  height: 40px;
  width: 40px;
}
.content .cards .card .icon-case{
  width: 1.7cm;
  height: 1.7cm;
}

@media screen and (max-width: 1050px) {
  .side-menu li {
      font-size: 18px;
  }
}

@media screen and (max-width: 940px) {
  .side-menu li span {
      display: none;
  }
  .side-menu {
      align-items: center;
  }
  .side-menu li img {
      width: 40px;
      height: 40px;
  }
  .side-menu li:hover {
      background: #f05462;
      padding: 8px 38px;
      border: 2px solid white;
  }
}

@media screen and (max-width:536px) {
  .brand-name h1 {
      font-size: 16px;
  }
  .content .cards {
      justify-content: center;
  }
  .side-menu li img {
      width: 30px;
      height: 30px;
  }
  .content .content-2 .recent-payments table th:nth-child(2),
  .content .content-2 .recent-payments table td:nth-child(2) {
      display: none;
  }
}

@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
  .nav{width: 50%;}
}

@keyframes example {
  0%   {left:0px; top:10px;
  }}
</style>
</head>
<body>

<div class="sidebar">
  <img src="images/logo.png" class="logo" />
  <br><br>
  <a href="project1.html" class="active"><i class="fa fa-fw fa-home"></i> Home</a>
  <p class="work">Employees</p>
  <p class="users">USers</p>
  <p class="try1">contacts</p>
  
</div>



<div class="nav">
  <table border="0"style="height: 5%;width:87%" >
    <tr>
      <td >
        <h2> <img src="pie-chart.png" style="height: 1cm;width:1cm;"/>  Admin Dashboard</h2>
      </td>
      <td style="width:50%;">
        <%
        if(x.next()){
          %>
          <p><%=x.getString(3)%>  <a href="adminlogin.html">Logout</a> </p>
          <%
      }else{%>
            <script>
              alert("USERID and PASSWORD are incorrect");
              location.replace("adminlogin.html");
            </script>
         // out.print("login not Sucessfully Completed....");
          //out.print("USERID and PASSWORD are incorrect");
      <%}
        %>  
        
        
      </td>
    </tr>
  </table>
</div>
<div class="content">
  <div class="cards">
      <div class="card">
          <div class="box">
              <h1><%=a.getInt(1)%></h1>
              <h3>Employees</h3>
          </div>
          <div >
              <img src="team.jpg" alt="" class="icon-case">
          </div>
      </div>
      <div class="card">
          <div class="box">
              <h1><%=c.getInt(1)%></h1>
              <h3>Users</h3>
          </div>
          <div >
              <img src="user.jpg" alt="" class="icon-case">
          </div>
      </div>
      <div class="card">
          <div class="box">
              <h1><%=a.getInt(1)+c.getInt(1)%></h1>
              <h3>Numbers of<br> Registers</h3>
          </div>
          <div >
              <img src="product.jpg" alt="" class="icon-case">
          </div>
      </div>
      <div class="card">
          <div class="box">
              <h1>350000</h1>
              <h3>Income</h3>
          </div>
              <img src="income.jpg" alt="" class="icon-case" >
      </div>
  </div> 
  <!---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <style>
  .Erow1{
    display: none;
  }
  .Erow{
    margin-top: 75px;
    margin-left: 160px;
  padding-left: 10px;
  display: table;
  
}

.Erow .Emp{
  display: table-row;
}
.Emp .AddEmp{
  width: 30%;
  margin-left: 40px;
  background-color: aqua;
  display: table-cell;
  height: 85%;
  
  box-shadow: rgba(9, 56, 143, 0.17) 0px -23px 25px 0px inset, rgba(0, 0, 0, 0.15) 0px -36px 30px 0px inset, rgba(0, 0, 0, 0.1) 0px -79px 40px 0px inset, rgba(0, 0, 0, 0.06) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
}

.Emp .AddEmp input[type=text],input[type=number],input[type=password]{
  
  width: 85%;
  box-sizing: border-box;
  border: 2px solid rgb(8, 78, 90);
  color: rgb(10, 12, 12);
  border-radius: 4px;
  padding: 5px 5px;
  margin-left: 25px;
  margin-top: 5px;
  margin-bottom: 10px;
  background-color: aqua;
}

.Emp .AddEmp label{
  
  margin-left: 25px;
}

.Emp .AddEmp h3{
  text-align: center;
  padding-top: 10px;
  margin-bottom: 20px;
}
.Emp .AddEmp button{
  padding: 10px;
  margin-left: 100px;
  width: 40%;
  background-color: rgb(145, 22, 49);
  color: #ddd1da;
  font-size: medium;
  font-weight: bold;
  border-radius: 10px;
  animation-name: example;
  animation-duration: 1s;
  animation-delay: 0s;
  animation-iteration-count:infinite;
  position: relative;
}
@keyframes example {
  0%   {left:0px; top:10px;}
}

</style>
 
 
 
  <div class="Erow1">
    <div class="Emp">
      <div class="AddEmp">
        <h3>Add Employee</h3>
        <form action="admintoadd.jsp">
          <label>ID:</label><br>
          <input type="text" name="id"><br>
          <label>Name:</label>
          <input type="text" name="name"><br>
          <label>Address:</label>
          <input type="text" name="address" ><br>
          <label>Designation:</label>
          <input type="text" name="desig" ><br>
          <label>Salary:</label>
          <input type="text" name="salary" ><br>
          <button>Add</button>
        </form>
      </div>
  
      <div class="AddEmp">
        <form action="admintoempdel.jsp">
          <h3>Delete Employee</h3>
          <label>ID:</label><br>
          <input type="text" name="id"><br>
          
          <button>Delete</button>
        </form>
        
      </div>
  
      <div class="AddEmp">
        <h3>Update Employee</h3>
        <form action="admintoempup.jsp">
          <label>ID:</label><br>
          <input type="text" name="id"><br>
      
          <label>Salary:</label>
          <input type="number" name="salary" ><br>
          <button>Update</button>
        </form>
        
      </div>
    </div>
  </div>
  <script>
    var joy=document.querySelector(".work");
    var yoj=document.querySelector(".Erow1");

   
    joy.onclick=function(){
        yoj.classList.toggle("Erow")
    }
</script>

<!-------------------------------------------------------------------------------------------------------------------------------------------->

<!------------user login-->
<style>
  .Urow{
    display: none;
  }
  .Urow1{
    margin-top: 75px;
    margin-left: 160px;
  padding-left: 10px;
  display: table;
  
}

.Urow1 .Emp{
  display: table-row;
}
.Emp .AddEmp{
  width: 30%;
  margin-left: 40px;
  background-color: aqua;
  display: table-cell;
  height: 85%;
  
  box-shadow: rgba(9, 56, 143, 0.17) 0px -23px 25px 0px inset, rgba(0, 0, 0, 0.15) 0px -36px 30px 0px inset, rgba(0, 0, 0, 0.1) 0px -79px 40px 0px inset, rgba(0, 0, 0, 0.06) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
}

.Emp .AddEmp input[type=text],input[type=number]{
  
  width: 85%;
  box-sizing: border-box;
  border: 2px solid rgb(8, 78, 90);
  color: rgb(10, 12, 12);
  border-radius: 4px;
  padding: 5px 5px;
  margin-left: 25px;
  margin-top: 5px;
  margin-bottom: 10px;
  background-color: aqua;
}

.Emp .AddEmp label{
  
  margin-left: 25px;
}

.Emp .AddEmp h3{
  text-align: center;
  padding-top: 10px;
  margin-bottom: 20px;
}
.Emp .AddEmp button{
  padding: 10px;
  margin-left: 100px;
  width: 40%;
  background-color: rgb(145, 22, 49);
  color: #ddd1da;
  font-size: medium;
  font-weight: bold;
  border-radius: 10px;
  animation-name: example;
  animation-duration: 1s;
  animation-delay: 0s;
  animation-iteration-count:infinite;
  position: relative;
}
@keyframes example {
  0%   {left:0px; top:10px;}
}
</style>

  <div class="Urow">
    <div class="Emp">
      <div class="AddEmp">
        <h3>Add User</h3>
       <form action="admintouser.jsp">
        <label>Name:</label>
        <input type="text"  name="name"><br>

        <label>SurName:</label>
        <input type="text" name="sname"><br>


        <label>Email:</label>
        <input type="text" name="email"><br>

        <label>Mobile Number:</label>
        <input type="text"  name="mobile"><br>

        <label>User Id:</label>
        <input type="text"  name="id"><br>

        <label>password:</label>
        <input type="password name="psw"><br>

        <label>conform Password:</label>
        <input type="password"><br>

        <button type="submit">Add</button>
       </form>
        
      </div>
  

      <div class="AddEmp"> <form action="admintodel.jsp">
        <h3>Delete User</h3>
        <label>Email</label><br>
        <input type="text" name="email"><br>
        
        <button type="submit">Delete</button>
       </form>
        
      
      </div>
  
      <div class="AddEmp">
        <form action="admintoup.jsp">
          <h3>Update Users</h3>
          <label>Email</label><br>
          <input type="text" name="email"><br>
          
          <label>Password</label>
          <input type="password" name="psw" ><br>
          <button>Update</button>
        </form>
        
      </div>
    </div>
  </div>

  <script>
    var emo=document.querySelector(".users");
    var act=document.querySelector(".Urow");

   
    emo.onclick=function(){
        act.classList.toggle("Urow1")
    }
</script>


<style>
  .userlogi{
    display: none;
  }
  .userlogi1{
    display:flex;
  }
</style>


<div class="userlogi">
 <div style="margin-right:5%;margin-left:30px;">
  <h2><b>User Info</b></h3>
 </div><br><br><br>
 <div style="margin-top:5%;">
  <table border="2px">
            
    <tr height="50px" class="labels">
        
        <th width="10%">Name</th>
        <th width="10%">SurName Name</th>
        <th width="8%">email</th>
        <th width="8%">Mobile Number</th>
        <th width="10%">id</th>
       
    </tr>
    <% 
    ps=con.prepareStatement("select *from register");
   ResultSet rs=ps.executeQuery();
    while(rs.next()){%>
    <tr class="values">
           <td height="40px"><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
           
            
            </td>
           
    </tr><%}%>
</table>

<center><br><h2>Employee Info</h2></center>


 
  <div style="margin-top:5%;">
   <table border="2px">
             
     <tr height="50px" class="labels">
         
         <th width="10%">id</th>
         <th width="10%">Name</th>
         <th width="8%">Address</th>
         <th width="8%">Designation</th>
         <th width="10%">salary</th>
        
     </tr>
     <% 
      ps=con.prepareStatement("select *from emp");
     rs=ps.executeQuery();
     while(rs.next()){%>
     <tr class="values">
            <td height="40px"><%=rs.getString(1)%></td>
             <td><%=rs.getString(2)%></td>
             <td><%=rs.getString(3)%></td>
             <td><%=rs.getString(4)%></td>
             <td><%=rs.getString(5)%></td>
            
             
             </td>
            
     </tr><%}%>
 </table>

 


















 </div>


</div>
<script>
  var emo1=document.querySelector(".try1");
  var act1=document.querySelector(".userlogi");

 
  emo1.onclick=function(){
      act1.classList.toggle("userlogi1")
  }
</script>











</body>
</html> 
<% }
catch(Exception e)
{
 out.println(e.toString());
}
%>