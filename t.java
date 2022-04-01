import java.sql.*;  
import java.util.*;
class t{  
public static void main(String args[]){  
try{  
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			System.out.println("loaded");	
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@ntsocietyserver:1521:oralbrce","IPC124","IPC124"); 
Scanner d=new Scanner(System.in);
int id=d.nextInt();
String n=d.next();
PreparedStatement stmt=con.prepareStatement("insert into student values(?,?)");  
stmt.setInt(1,id);//1 specifies the first parameter in the query  
stmt.setString(2,n);  
  
int i=stmt.executeUpdate();  
System.out.println(i+" records inserted");  
  
con.close();  
  
}catch(Exception e){ System.out.println(e);}  
  
}  
}  