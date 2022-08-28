package daofiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.PatientBean;
import dba.ConnectionProvider;

public class PatientDao {
		
	public static boolean validate(String email,String password){  
		  boolean status=false;
	try {	
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("select * from Patients where email=? and password=?");
		    ps.setString(1,email);  
		    ps.setString(2,password);  
		    	         
	        ResultSet rs=ps.executeQuery();
	        status=rs.next();
	    	
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
	return status;
}
	
	public static int save(PatientBean pb)	{
		int status=0;
		try	{
			Connection conn=ConnectionProvider.getConnection();
			PreparedStatement ps=conn.prepareStatement("insert into Patients(name,age,animalSpecies,ownerName,ownerContactNum,email,password) values(?,?,?,?,?,?,?)");
		
	        ps.setString(1,pb.getName());
	        ps.setString(2,pb.getAge());
	        ps.setString(3,pb.getAnimalSpecies());          
	        ps.setString(4,pb.getOwnerName());  
	        ps.setString(5,pb.getOwnerContactNum());
	        ps.setString(6,pb.getEmail());
	        ps.setString(7,pb.getPassword());   
	          
	        status=ps.executeUpdate();  
	          
	        conn.close();  
			}
		catch(Exception e)	{
			e.printStackTrace();
		}
		return status;
	}
	
	 public static List<PatientBean> getAllPatient(){  
	        List<PatientBean> list=new ArrayList<PatientBean>();  
	          
	        try{  
	            Connection con=ConnectionProvider.getConnection();  
	            PreparedStatement ps=con.prepareStatement("select * from Patients ORDER BY id");  
	            ResultSet rs=ps.executeQuery();  
	            while(rs.next()){  
	                PatientBean pb=new PatientBean();  
	                pb.setId(rs.getInt(1));  
	                pb.setName(rs.getString(2));
	                pb.setAge(rs.getString(3));
	                pb.setAnimalSpecies(rs.getString(4));
	                pb.setOwnerName(rs.getString(5));
	                pb.setOwnerContactNum(rs.getString(6)); 
			        pb.setPassword(rs.getString(7)); 
			        pb.setEmail(rs.getString(8));
 					
	                list.add(pb);  
	            }  
	            con.close();  
	        }catch(Exception e){
	        	e.printStackTrace();
	        	}  
	          
	        return list;  
	    }  
	 public static int update(PatientBean up){  
	        int status=0;  
	        try{  
	            Connection con=ConnectionProvider.getConnection();  
	            java.sql.PreparedStatement ups=con.prepareStatement("update patients set name=?,age=?,animalSpecies=?,OwnerName=?,OwnerContactNum=? where email=?");  
	            ups.setString(1,up.getName()); 
	            ups.setString(2,up.getAge());
	            ups.setString(3,up.getAnimalSpecies()); 
	            ups.setString(4,up.getOwnerName()); 
	            ups.setString(5,up.getOwnerContactNum());
	            ups.setString(6,up.getEmail());
	            
	            status=ups.executeUpdate();  
	              
	            con.close();  
	        }catch(Exception ex){ex.printStackTrace();}  
	          
	        return status;  
	    }

}	
