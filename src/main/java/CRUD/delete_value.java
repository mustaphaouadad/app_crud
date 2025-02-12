package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.DB_Connection;
import common.user_Bean;

public class delete_value {
	
	public void delete_value (String ID) {
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		PreparedStatement ps=null;
		
		 
		
		
		try {
			
			String querry="delete from user where ID=?";
			ps=connection.prepareStatement(querry);
			ps.setString(1, ID);
			ps.executeUpdate();
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		
	}

}
