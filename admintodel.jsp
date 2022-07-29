<%@ page import="java.sql.*"%>

<%
String fname=request.getParameter("email");



try{
    Connection con=null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@raki:1521:xe","system","raki");
    String sql="delete  from register where email = ? ";  
    PreparedStatement ps=con.prepareStatement(sql);
    ps.setString(1,fname);
    int x=ps.executeUpdate();
    if(x>0){
    %>
    <script>
        alert("successufl");
        location.replace("thanks.html");
    </script>
    <%
    }

}catch(Exception e){
    out.print(e);
}
%>