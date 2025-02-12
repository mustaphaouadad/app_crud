package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;
import common.user_Bean;

public class Edit_value {
	
	
	public user_Bean get_value_of(String ID) {
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		 
		user_Bean obj_user_Bean=new user_Bean();
		
		try {
			
			String querry="select *from user where ID=?";
			ps=connection.prepareStatement(querry);
			ps.setString(1, ID);
			rs=ps.executeQuery();
			while (rs.next()) {
				
				
				
				
				obj_user_Bean.setID(rs.getString("ID"));
				obj_user_Bean.setUser_name(rs.getString("user_name"));
				obj_user_Bean.setMobile(rs.getString("mobile"));
				obj_user_Bean.setEmail(rs.getString("email"));
				
				
				
			}
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return obj_user_Bean;
		
		
	}
	
	public void edit_user(user_Bean obj_user_Bean) {
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		PreparedStatement ps=null;  
		
		 
		
		
		try {
			
			String querry="update user set user_name=?,email=?,mobile=?, where ID=?";
			ps=connection.prepareStatement(querry);
			ps.setString(1, obj_user_Bean.getUser_name());
			ps.setString(2, obj_user_Bean.getEmail());
			ps.setString(3, obj_user_Bean.getMobile());
			ps.setString(4, obj_user_Bean.getID());
			ps.executeUpdate();
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		
	}
}
