<%@ page import="java.sql.*"%>

<%
String fname=request.getParameter("name");
String lname=request.getParameter("sname");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String userid=request.getParameter("id");
String npass=request.getParameter("psw");


try{
    Connection con=null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@raki:1521:xe","system","raki");
    PreparedStatement ps=con.prepareStatement("insert into admin values(?,?,?,?,?,?)");
    ps.setString(1,fname);
    ps.setString(2,lname);
    ps.setString(3,email);
    ps.setString(4,mobile);
    ps.setString(5,userid);
    ps.setString(6,npass);
    
    int x=ps.executeUpdate();
    if(x!=0){
       response.sendRedirect("adminlogin.html");
    }else{
        out.println("Registration not Sucessfully Completed....");
        out.print("Something went wrong...");
    }
    

}catch(Exception e){
    out.print(e);
}
%>