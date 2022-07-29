
<%@ page import="java.sql.*"%>

<%

String email=request.getParameter("uname");
String pass=request.getParameter("psw");


try{
    Connection con=null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@raki:1521:xe","system","raki");
    String s="select * from admin where email=? and password=?";
    PreparedStatement ps=con.prepareStatement(s);
    ps.setString(1,email);
    ps.setString(2,pass);
    ResultSet S=ps.executeQuery();

   if(S.next())
   {
    response.sendRedirect("project.html");
   }
   else
   {
    out.println("Login Denied");
   }



}catch(Exception e){
    out.print(e);
}
%>
