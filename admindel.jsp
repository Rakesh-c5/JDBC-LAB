

<%@ page import="java.sql.*"%>

<%

String email=request.getParameter("name");
String pass=request.getParameter("psw");


try{
    Connection con=null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@raki:1521:xe","system","raki");


    String sql="delete  from admin where email = ? and password = ? ";
		

  
    PreparedStatement ps=con.prepareStatement(sql);
    ps.setString(1,email);
    ps.setString(2,pass);
    int x=ps.executeUpdate();
    
   if(x>=0){
    response.sendRedirect("adminlogin.html");
   }
   else
   {
    out.println("deletion failed");
   }
   


}catch(Exception e){
    out.print(e);
}
%>
