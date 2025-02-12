package CRUD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;
import common.user_Bean;

public class Read_value {
	
	public static void main(String[] args) {
		Read_value obj_Read_value=new Read_value();
		obj_Read_value.get_value();
	}
	public List<user_Bean> get_value() {
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<user_Bean> list=new ArrayList<user_Bean>();
		
		try {
			
			String querry="select *from user";
			ps=connection.prepareStatement(querry);
			rs=ps.executeQuery();
			while (rs.next()) {
				user_Bean obj_user_Bean=new user_Bean();
				System.out.println(rs.getString("ID"));
				System.out.println(rs.getString("user_name"));
				System.out.println(rs.getString("mobile"));
				System.out.println(rs.getString("email"));
				
				
				obj_user_Bean.setID(rs.getString("ID"));
				obj_user_Bean.setUser_name(rs.getString("user_name"));
				obj_user_Bean.setMobile(rs.getString("mobile"));
				obj_user_Bean.setEmail(rs.getString("email"));
				
				list.add(obj_user_Bean);
				
			}
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
		
		
		
		
		
		
		
		
	}

}
