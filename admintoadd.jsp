<%@ page import="java.sql.*"%>

<%
String fname=  request.getParameter("id");
String lname=request.getParameter("name");
String email=request.getParameter("address");
String mobile=request.getParameter("desig");
String userid=request.getParameter("salary");



try{
    Connection con=null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@raki:1521:xe","system","raki");
    PreparedStatement ps=con.prepareStatement("insert into emp values(?,?,?,?,?)");
    ps.setString(1,fname);
    ps.setString(2,lname);
    ps.setString(3,email);
    ps.setString(4,mobile);
    ps.setString(5,userid);
    
    int x=ps.executeUpdate();
    if(x!=0){
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