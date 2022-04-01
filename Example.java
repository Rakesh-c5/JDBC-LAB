import java.sql.*;
import java.util.*;

class Example
{
	public static void main(String args[])
	{
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			System.out.println("loaded");	
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@ntsocietyserver:1521:oralbrce","IPC124","IPC124"); 
			System.out.println("completed");
			Statement s=con.createStatement();


		//insertion
		Scanner st=new Scanner(System.in);
			System.out.println("enter roll number and name of the student ");
			int rno=st.nextInt();
			String name=st.next();

			ResultSet rs=s.executeQuery("insert into student values(rno,name)");
			System.out.println("Query execution completed for inserton");


/*		//dispay:
			ResultSet rs1=s.executeQuery("select * from student");
			while(rs1.next())
			{
				System.out.println(rs1.getInt(1)+"  "+rs1.getString(2));
			}
			System.out.println("display completed");
			


		//update:
			String sql="UPDATE student " + "set rno = 5 WHERE name = 'mani'";
			s.executeUpdate(sql);
			ResultSet rs1=s.executeQuery("select * from student");
			while(rs1.next())
			{
				System.out.println(rs1.getInt(1)+"  "+rs1.getString(2));
			}
			System.out.println("display completed");
				
	

		//deletion
			String sql="DELETE  from student where name = 'mani' ";
			s.executeUpdate(sql);		
	
		//CREATION
			s.executeUpdate("CREATE TABLE emp(empid int,name varchar(20)) ");

		//FETCHING RECORDS
			ResultSet rs5=s.executeQuery("select * from student where rno = 5 ");
			while(rs5.next())
			{
				System.out.println(rs5.getInt(1)+"  "+rs5.getString(2));
			}

	*/
		
			
			con.close();
			
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}
	}
}