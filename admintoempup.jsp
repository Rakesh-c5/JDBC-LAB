
<%@ page import="java.sql.*"%>

<%

String email=request.getParameter("id");
String pass=request.getParameter("salary");





try{
    Connection con=null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@raki:1521:xe","system","raki");
   String sql="update emp set salary = ? WHERE id=?";
    PreparedStatement ps=con.prepareStatement(sql);
    ps.setString(1,pass);
    ps.setString(2,email);
    int x=ps.executeUpdate();
    if(x>0){
        %>
        <script>
           
            location.replace("thanks.html");
        </script>
        <%
        }



}catch(Exception e){
    out.print(e);
}
%>
