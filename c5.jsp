<%@page import="java.sql.*"%>
<%
	String userid=request.getParameter("uname");
	String npass=request.getParameter("psw");
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@raki:1521:xe","system","raki");
 String sql="select * from register where email=? and password=?";
 PreparedStatement stmt=con.prepareStatement(sql);

 stmt.setString(1,userid);
 stmt.setString(2,npass);
 ResultSet rs=stmt.executeQuery();


%>






<html>
    <head>
        <title>front end design for YouTube </title>
        <link rel="stylesheet" href="project.css">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-compatible" content="IE=edge">
        <meta name="viewpoint" content="width=device-width,initial-scale=1.0">
        <script src="https://kit.fontawesome.com/c4254e24a8.js" crossorigin="anonymous"></script>
     <style>






/* The Modal (background) */
.modaldiv {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 20%; /* Full width */
  height: 450px; /* Full height */
  overflow: hidden; /* Enable scroll if needed */
 border: 2px solid #888;
 background: #fff;
  margin-top: 4%;
  margin-left: 75%;
  margin-right: 50%;
  border-radius: 20px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fcfcfc;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

.imgcontainer1 {
  text-align: center;
  margin-right: 10px;
    margin-left: 10px;  
    margin-top: 10px;
  position: relative;
  background-color:antiquewhite;
  margin-top: 10px;
  padding-top: 10px;
  border-radius: 20px;
}

img.avatar {
  width:60px;
    border-radius: 90%;
    

}

.modaldiv hr{
  width:80%;
    
    margin-left: 20px;
    margin-right: 20px;
}

.loginfo{
    margin-left: 40px;
    margin-top: 20px;
    margin-bottom: 30px;

}
.loginfo p{
   padding-top: 10px;
    padding-bottom: 20px;
   
}

.loginfo hr{
    width:80%;


}
.sub{
   
    
    margin-left: 30px;

}

.sub1{
    padding-top: 10px;
   
}
.sub1 hr{
    width: 80%;
    
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
    </head>
    
    <body>
        
        <nav class="flex-div">
            <div class="nav-left flex-div">
                <img src="images/menu.png" class="menu-icon">
                <img src="images/logo.png" class="logo">
            </div>
            <div class="nav-middle flex-div">
                <div class="search-box flex-div">
                    <input type="text" placeholder="Search">
                    <img src="images/search.png" alt="search">
                </div>
                <img src="images/voice-search.png" alt="vo" class="mic-icon">
            </div>
            <div class="nav-right flex-div">
                <img src="images/upload.png" alt="up" class="upload">
                <img src="images/more.png" alt="">
                <img src="images/notification.png" alt="">
                <button style="border: 0; background-color: #fff;"onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><img src="images/Jack.png" class="user-icon"></button>
              
            </div>

         
           
        </nav>
        
 


        <div id="id01" class="modaldiv">
          <div class="imgcontainer1">
            <img src="images/Jack.png" alt="Avatar" class="avatar">
            <%
            if(rs.next()){%>
                <font size="2" color="blue"><br><%=rs.getString(1)%><br><%=rs.getString(3)%><br></font><br>

           <% }
           else{%>
            <script>
                window.alert("Invalid Credentials");
                location.replace("login.html");
            </script>
          <% }%>
          </div>

                <div class="sub">
                    <div class="sub1">
                        <font size="3" color="blue"> <center><p class="intro">About user </p><br></center></font>
                   
                        <hr>
                    </div>

                    <div class="sub1">
                        <font size="3" color="blue"><center>  <P class="intro1">Admin Details </P><br></center></font>
                          <hr>
                      </div>

                      

                      <div class="sub1">
                        <font size="3" color=blue><center>  <P class="intro2">Settings</P><br></center></font>
                         <hr>
                      </div>
                      <div class="sub1">
                        <font size="3" color=blue><center>  <P ><a href="login.html">Logout</a></P><br></center></font>
                         
                      </div>
                    </div>

                </div>
         </div>

         
          <script>
            // Get the modal
            var modal = document.getElementById('id01');
           
            
            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
              if (event.target == modal) {
                modal.style.display = "none";
              
              }
             
            }
            </script>  
                   <style>
                    .dddd{
                        display: none; /* Hidden by default */
                        position: fixed; /* Stay in place */
                        z-index: 1; /* Sit on top */
                        left: 0;
                        top: 0;
                         width: 30%; /* Full width */
                         height: 250px; /* Full height */
                        overflow: hidden; /* Enable scroll if needed */
                        border: 2px solid #888;
                         margin-top: 4%;
                         margin-left: 60%;
                         background: #fff;
                         margin-right: 70%;
                         border-radius: 20px;
                    }
                    .eeee{
                      display: flex;
                      background:
        linear-gradient(red, transparent),
        linear-gradient(to top left, lime, transparent),
        linear-gradient(to top right, blue, transparent);
    background-blend-mode: screen;
}
                    }
                    
                 </style>
                 <div class="dddd">
                     <div><br><br>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font size="5" color="black"><label>Id:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString(1)%></font><br><br>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="5" color="black"><label>Video content:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"></font><br><br>
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="5" color="black"><label>Video upload:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file" style="border-radius:30px;width: 80px;
                        "></font><br><br><br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit">Submit</button>
                        
                     </div>
                    
                     
                 </div>
                 <script>
                     var uu=document.querySelector(".upload");
                     var ii=document.querySelector(".dddd");
                     uu.onclick=function(){
                         ii.classList.toggle("eeee")
                     }
                 </script>  
            
           <!---------------------------------------------------------------------user info details----------------------------------------> 
            <style>
                .aboutuser{
                     width: 0%;
                     height: 0%;
                     display: none;
                }
                .aboutuser h2{
                    display: none;
                }
                .about{
                    width: 100%;
                    height: 145%;
                    background-color: rgb(86, 178, 249);
                 
                    padding-top:5%;
                    padding-left: 20%;
                    display: flex;
                    
                }
              
              
                .about h2{
                    display: flex;
                    color: floralwhite;

                }
             
            </style>
        <div class="aboutuser" >
            <br>
            <br>
            <br>
            <br><br><br><br>
            <div>
                <h1><i><u>User Info:</u></i></h1>
                <h1><i>Hi <%=rs.getString(1)%> <%=rs.getString(2)%> ,this the information belongs to you  which you have submited starting</i></h1><br><br>
                <h1>To update any information refer the link at the end of the page related to password issues or to update</h1><br>
                <h2>we wish you a good journey with us to improve social knowledge and gather more information about present trending technics and so on <br>Weclome</h2>
                <br><hr><br>
                <table>
                    <tr>
                        <td height="50px" ><h2>Name</h2></td>
                        <td height="50px">:</td>
                        <td height="50px"><h2><%=rs.getString(1)%></h2></td>
                    </tr>
                    <tr>
                        <td height="50px"><h2>Last name</h2></td>
                        <td height="50px">:</td>
                        <td height="50px"><h2><%=rs.getString(2)%></h2></td><br><br><br>
                    </tr>
                    <tr>
                        <td height="50px"><h2>Email id</h2></td>
                        <td height="50px">:</td>
                        <td height="50px"><h2><%=rs.getString(3)%></h2></td>
                    </tr>
                    <tr>
                        <td height="50px"><h2>Mobile Number</h2></td>
                        <td height="50px">:</td>
                        <td height="50px"><h2><%=rs.getString(4)%></h2></td>
                    </tr>
                    <tr>
                        <td height="50px"><h2>User id</h2></td>
                        <td height="50px">:</td>
                        <td height="50px"><h2><%=rs.getString(5)%></h2></td>
                    </tr>
                    <tr>
                        <td height="50px"><h2>number of videos apload</h2></td>
                        <td height="50px">:</td>
                        <td height="50px"><h2>0</h2></td>
                    </tr>
                    <tr>
                        <td height="50px"><h2>number of Subscribers</h2></td>
                        <td height="50px">:</td>
                        <td height="50px"><h2>0</h2></td>
                    </tr>
            
                    <tr>
                        <td height="50px"><h2></h2></td>
                        <td height="50px"><button style="height: 20px;width:70px">Load more</button></td>
                        <td height="50px"><h2></h2></td>
                    </tr>
            
                </table>
                <br>
               <div style="box-shadow: #fd7474;">
                <a href="delete.html">Delete Account</a><br><br>
                <a href="forgot.html">Forgot password</a><br><br>
                <a href="login.html">Back To login</a><br>
               </div>
                
            </div>

        </div>
       
        <!-------------------------------------------------------------------------------------------------------------------->
<!---------------------------------------------------------------------admin info details----------------------------------------> 

<style>

.help{
            width: 0%;
            height: 0%;
            display: none;
    }
    .help h2{
        display: none;
    }
    .about{
        width: 100%;
        height: 100%;
        background-color: rgb(86, 178, 249);
        padding-top:5%;
        padding-left: 20%;
        display: flex;
    }
    .about h2{
        display: flex;
    }
</style>

<div class="help" >
    <br>
    <br>
    <br>
    <br><br><br><br>
    <div>
        <h1><i><u>Admin Details:</u></i></h1><br>
        <h2><i>Hi <%=rs.getString(1)%> <%=rs.getString(2)%> ,this is a information related to admin information and website history</i></h2><br><br>
       
        <br><hr><br>
        <table>
            <tr>
                <td height="50px" ><h2>Name</h2></td>
                <td height="50px">:</td>
                <td height="50px"><h2>admin</h2></td>
            </tr>
            <tr>
                <td height="50px"><h2>Last name</h2></td>
                <td height="50px">:</td>
                <td height="50px"><h2>admin</h2></td><br><br><br>
            </tr>
            <tr>
                <td height="50px"><h2>Email id</h2></td>
                <td height="50px">:</td>
                <td height="50px"><h2>admin@gmail.com</h2></td>
            </tr>
            
            <tr>
                <td height="50px"><h2></h2></td>
                <td height="50px"><button style="height: 20px;width:70px">Load more</button></td>
                <td height="50px"><h2></h2></td>
            </tr>
    
        </table>
        <br>
        <h2>if an error related to website please contact admin using gmail which is given above <br>Thank you <br></h2>
      
        
    </div>

</div>


<!-----------------Settingss---------------------------------------------------------------->
<style>
    .trail{
        width:0%;
        height:0%;
        display: none;
    }
    .trail h1,h2,h4,h5{
        display: none;
    }
    .bhanu{
        width:100%;
        height:160%;
        background-color: rgb(86, 178, 249);
        padding-top:5%;
        padding-left: 20%;
        display: flex;
    }
    .bhanu h1,h2,h4,h5{
        display: flex;
    }
    .bhanu img{
        width:60px;
        border-radius: 50%;
      
      
    }
    .bhanu p{
        padding-left:40%;
 
    }
</style>

<div class="trail">
    <br>
    <br>
    <br>
    <br><br><br><br>
    <div>
       <h2><b>Account</b></h2><br>
       <h3>Choose how you appear and what you see on YouTube</h3><br>
       <p>singed in as <%=rs.getString(3)%></p>
        <br><hr><br>
        <h2>Your YouTube channel</h2><br>
        <p>This is your presence on Youtube &bull; You need a channel to upload your own videos , comments on videos or create playlists &bull;</p><br>
        <h2>Your channel </h2><br>
        <center><img src="images/Jack.png"></center><br><br>
        <p>User id&nbsp;&nbsp;:&nbsp;&nbsp;<%=rs.getString(5)%></p><br>
        <p><a href="#">channel status and featuere</a>s</p><br>
        <p><a href="#">Add or manage your channel</a></p><br>
        <p><a href="#">view advanced settings</a></p><br><br>
        <hr><br><br>
        <h2>Your Account </h2><br>
        <p>You signed into Youtube with Your Google Account</p><br><br>
        <h2>Google Account </h2><br>
        <p>View or change your Google account settings</p>
        <p>You will be redirected to your account page</p><br>
        <h2>Membership </h1>
        <p>No membership | Get Youtube Preminum</p><br>
        <h2>Update password:</h2><br>
        <p><a href="delete.html">To Delete account</a></p>
        <h2>Forgot password:</h2><br>
        <p><a href="forgot.html">when you forgot the paswork click here</a> </p><br>
    </div>

</div>

<script>
    var raki=document.querySelector(".intro2");
    var cc=document.querySelector(".trail");

   
    raki.onclick=function(){
        cc.classList.toggle("bhanu")
    }
</script>



<!------------------------------------------------------------------------------------------------>




<!------------------------------------------------------------------------------------------------------------------------------------------------>
        <!-----------sidebar--->
        <div class="sidebar">
            <div class="shortcut_links">
                <a href=""><img src="images/home.png" alt=""><p>Home</p></a>
                <a href=""><img src="images/explore.png" alt=""><p>Explore</p></a>
                <a href=""><img src="images/subscriprion.png" alt=""><p>Subscription</p></a>
                <hr class="aaa hh">
                <br>
                <a href=""><img src="images/library.png" alt=""><p>Library</p></a>
                <a href=""><img src="images/history.png" alt=""><p>History</p></a>
                <hr>
                <h3 class="sub1">BEST OF YOUTUBE</h3>

                <a href=""><img src="images/music-sign.png" alt=""><p>Music</p></a>
                <a href=""><img src="images/offside-flag.png" alt=""><p>Sports</p></a>
                <a href=""><img src="images/news-advertisement.png" alt=""><p>News</p></a>
                <a href=""><img src="images/live-broadcasting.png" alt=""><p>Live</p></a>
                <a href=""><img src="images/shopping-bag.png" alt=""><p>Fashion and Beauty</p></a>
                <a href=""><img src="images/learning.png" alt=""><p>Learing</p></a>
                <a href=""><img src="images/playlist.png" alt=""><p>Play List</p></a>
                <a href=""><img src="images/messages.png" alt=""><p>Messages</p></a>
                <a href=""><img src="images/show-more.png" alt=""><p>Show More</p></a>

                <hr class="hh">
            </div>
            <div class="sub">
                <h3>SUBSCRIBED</h3>
                <a href=""><img src="images/Jack.png" alt=""><p>20761A0583</p></a>
                <a href=""><img src="images/simon.png" alt=""><p>20761A05C5</p></a>
                <a href=""><img src="images/tom.png" alt=""><p>20761A05B8</p></a>
                <a href=""><img src="images/megan.png" alt=""><p>20761A0571</p></a>
                <a href=""><img src="images/cameron.png" alt=""><p>20761A05C7</p></a>
                <a href=""><img src="images/Jack.png" alt=""><p>20761A05C6</p></a>
                <a href=""><img src="images/simon.png" alt=""><p>20761A05C1</p></a>
                <a href=""><img src="images/tom.png" alt=""><p>20761A0582</p></a>
                <a href=""><img src="images/megan.png" alt=""><p>20761A0578</p></a>
                <a href=""><img src="images/cameron.png" alt=""><p>20761A0576</p></a>
                <a href=""><img src="images/show-more.png" alt="" class="shortcut_links"><p>Show More</p></a>
            </div>
        </div>
     <!-- ----------main------------>   
    <div class="container">
        
        <div class="banner">
            <img src="images/banner.png" alt="">
        </div>
        
        <div class="list-container">

        

            <div class="vid-list">
                <a href="p4.html"><img src="images/l.jfif " height=212px style="padding-bottom: 2px;" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/tom.png" alt="">
                        <div class="vid-info">
                            <a href="p4.html">LBRCE,Mylavaram</a>
                            <p>Kumar Sai channel</p>
                            <p>150k views &bull; 12 days</p>
                        </div>
                </div>
            </div>

            <div class="vid-list">
                <a href="p4.html"><img src="images/thumbnail12.jpg" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/megan.png" alt="">
                        <div class="vid-info">
                            <a href="p4.html">News Related to Great LBRCE</a>
                            <p>Sameer channel</p>
                            <p>15k views &bull; 2 days</p>
                        </div>
                </div>
            </div>
            <div class="vid-list">
                <a href="play2.html"><img src="images/thumbnail10.jpg" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/simon.png" alt="">
                        <div class="vid-info">
                            <a href="play2.html">Great Friends at LBRCE,Mylavaram 9:37Pm </a>
                            <p>Pavan Ganesh channel</p>
                            <p>15k views &bull; 2 days</p>
                        </div>
                </div>
            </div>

            <div class="vid-list">
                <a href="play-video.html"><img src="images/rr.jfif" height=220px class="thumbnail" style="width:280px;height:200px"></a>
                <div class="flex-div">
                        <img src="images/Jack.png" alt="">
                        <div class="vid-info">
                            <a href="play-video.html">Creating a video with an animation</a>
                            <p>Ravi Learning channel</p>
                            <p>15k views  &bull; 2 days</p>
                        </div>
                </div>
            </div>

            <div class="vid-list">
                <a href="play3.html"><img src="images/thumbnail1.png" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/cameron.png" alt="">
                        <div class="vid-info">
                            <a href="play3.html">Nature Lover</a>
                            <p>Sai Teja  channel</p>
                            <p>15k views &bull; 2 days</p>
                        </div>
                </div>
            </div>
            

            <div class="vid-list">
                <a href=""><img src="images/thumbnail2.png" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/megan.png" alt="">
                        <div class="vid-info">
                            <a href="">Fight aganist Freedom</a>
                            <p>Ravi Learning channel</p>
                            <p>15k views &bull; 2 days</p>
                        </div>
                </div>
            </div>


            <div class="vid-list">
                <a href=""><img src="images/thumbnail3.png" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/Jack.png" alt="">
                        <div class="vid-info">
                            <a href="">Foreign Countries travelling</a>
                            <p>Ravi Learning channel</p>
                            <p>15k views &bull; 2 days</p>
                        </div>
                </div>
            </div>

            <div class="vid-list">
                <a href=""><img src="images/thumbnail4.png" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/rr.jfif" alt="">
                        <div class="vid-info">
                            <a href="">Nothern Countries</a>
                            <p>Ravi Learning channel</p>
                            <p>15k views&bull; 2 days</p>
                        </div>
                </div>
            </div>

            <div class="vid-list">
                <a href=""><img src="images/thumbnail5.png" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/megan.png" alt="">
                        <div class="vid-info">
                            <a href="">Best channel to learn codings that help to a web developer</a>
                            <p>Ravi Learning channel</p>
                            <p>15k views&bull; 2 days</p>
                        </div>
                </div>
            </div>
            <div class="vid-list">
                <a href="play-video.html"><img src="images/rr.jfif" height=220px class="thumbnail" style="width:280px;height:160px"></a>
                <div class="flex-div">
                        <img src="images/Jack.png" alt="">
                        <div class="vid-info">
                            <a href="play-video.html">Creating a video with an animation</a>
                            <p>Ravi Learning channel</p>
                            <p>15k views  &bull; 2 days</p>
                        </div>
                </div>
            </div>
            <div class="vid-list">
                <a href=""><img src="images/thumbnail6.png" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/rr.jfif" alt="">
                        <div class="vid-info">
                            <a href="">Best channel to learn codings that help to a web developer</a>
                            <p>Ravi Learning channel</p>
                            <p>15k views &bull;2 days</p>
                        </div>
                </div>
            </div>



            <div class="vid-list">
                <a href=""><img src="images/thumbnail2.png" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/megan.png" alt="">
                        <div class="vid-info">
                            <a href="">Fight aganist Freedom</a>
                            <p>Ravi Learning channel</p>
                            <p>15k views &bull; 2 days</p>
                        </div>
                </div>
            </div>


            <div class="vid-list">
                <a href=""><img src="images/thumbnail3.png" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/Jack.png" alt="">
                        <div class="vid-info">
                            <a href="">Foreign Countries travelling</a>
                            <p>Ravi Learning channel</p>
                            <p>15k views &bull; 2 days</p>
                        </div>
                </div>
            </div>

            <div class="vid-list">
                <a href=""><img src="images/thumbnail4.png" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/rr.jfif" alt="">
                        <div class="vid-info">
                            <a href="">Nothern Countries</a>
                            <p>Ravi Learning channel</p>
                            <p>15k views&bull; 2 days</p>
                        </div>
                </div>
            </div>









            <div class="vid-list">
                <a href=""><img src="images/thumbnail7.png" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/Jack.png" alt="">
                        <div class="vid-info">
                            <a href="">Best channel to learn codings that help to a web developer</a>
                            <p>Ravi Learning channel</p>
                            <p>15k views &bull; 2 days</p>
                        </div>
                </div>
            </div>


            <div class="vid-list">
                <a href=""><img src="images/thumbnail8.png" class="thumbnail"></a>
                <div class="flex-div">
                        <img src="images/Jack.png" alt="">
                        <div class="vid-info">
                            <a href="">Best channel to learn codings that help to a web developer</a>
                            <p>Ravi Learning channel</p>
                            <p>15k views &bull; 2 days</p>
                        </div>
                </div>
            </div>
           
        </div>
    </div>


   


     <script src="script.js"></script>   
     
    </body>
</html>
<% }
catch(Exception e)
{
 out.println(e.toString());
}
%>