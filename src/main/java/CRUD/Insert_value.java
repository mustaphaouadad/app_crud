package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;

import common.DB_Connection;

public class Insert_value {
	
	public void insert_value(String ID,String user_name,String  mobile ,String email ) {
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		PreparedStatement ps=null;
		
	    try {
	    	String query="insert into user(ID,user_name,mobile,email) values(?,?,?,?)";
		ps=connection.prepareStatement(query);
		ps.setString(1, ID);
		ps.setString(2, user_name);
		ps.setString(3, mobile);
		ps.setString(4, email);
		
		ps.executeUpdate();
	    } catch (Exception e) {
			System.out.println(e);
		}
		
	}

}
