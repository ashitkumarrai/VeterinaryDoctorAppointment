package daofiles;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.AppointmentBean;
import dba.ConnectionProvider;

public class AppointmentDao {
		
	 public static int save(AppointmentBean ab){  
	        int status=0;  
	        try{  
	            Connection con=ConnectionProvider.getConnection();   
	            java.sql.PreparedStatement ps=con.prepareStatement("insert into appointment(name,email,contact,age,day,specialty,description,docId) values(?,?,?,?,?,?,?,?)");  
	            
	            ps.setString(1,ab.getName()); 
	            ps.setString(2,ab.getEmail());
	            ps.setString(3,ab.getContact());
	            ps.setInt(4, ab.getAge());
	            ps.setString(5, ab.getDay());
	            ps.setString(6,ab.getSpecialty());  
	            ps.setString(7,ab.getDescription());
	            ps.setInt(8, ab.getDocId());
	            
	            status=ps.executeUpdate();  
	              
	            con.close();  
	        }catch(Exception ex)
	        {ex.printStackTrace();}  
	          
	        return status;  
	    }  
	 public static List<AppointmentBean> getAppointmentbyemail(String email)
	 {
	 	ArrayList<AppointmentBean> list=new ArrayList<>();
	 	try {
	 		Connection con=ConnectionProvider.getConnection();
	 		java.sql.PreparedStatement ps=con.prepareStatement("select * from appointment where email=? order by day");
	 		ps.setString(1,email);
	 		ResultSet rs=ps.executeQuery();
	 		while (rs.next()) {
	 			AppointmentBean app=new AppointmentBean();
	 				app.setId(rs.getInt(1));
	 			  	app.setName(rs.getString(2));  
	                app.setEmail(rs.getString(3));  
	                app.setContact(rs.getString(4));
	                app.setAge(rs.getInt(5));
	                app.setDay(rs.getString(6));
	                app.setSpecialty(rs.getString(7));
	                app.setDescription(rs.getString(8));
	                app.setDocId(rs.getInt(9));
	             

	 			list.add(app);
	 		}
	 	} catch (Exception e) {
	 		e.printStackTrace();
	 	}
	 	return list;
	 }

	
	 
	 public static List<AppointmentBean> getAppointById(int id)
	 {
	 	ArrayList<AppointmentBean> list=new ArrayList<>();
	 	try {
	 		Connection con=ConnectionProvider.getConnection();
	 		java.sql.PreparedStatement ps=con.prepareStatement("select * from appointment where docId=? order by day desc");
	 		ps.setInt(1,id);
	 		ResultSet rs=ps.executeQuery();
	 		while (rs.next()) {
	 			AppointmentBean app=new AppointmentBean();
	 				app.setId(rs.getInt(1));
	 			  	app.setName(rs.getString(2));  
	                app.setEmail(rs.getString(3));  
	                app.setContact(rs.getString(4));
	                app.setAge(rs.getInt(5));
	                app.setDay(rs.getString(6));
	                app.setSpecialty(rs.getString(7));
	                app.setDescription(rs.getString(8));
	                app.setDocId(rs.getInt(9));

	 			list.add(app);
	 		}
	 	} catch (Exception e) {
	 		e.printStackTrace();
	 	}
	 	return list;
	 }
	  public static int cancel(int id){  
	        int status=0;  
	        try{  
	            Connection con=ConnectionProvider.getConnection();  
	            java.sql.PreparedStatement ps=con.prepareStatement("delete from appointment where id=?");  
	            ps.setInt(1,id);  
	            status=ps.executeUpdate();  
	              
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return status;  
	    }  
}
