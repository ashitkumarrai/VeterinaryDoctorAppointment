package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.PatientBean;
import daofiles.PatientDao;

/**
 * Servlet implementation class PatientReg
 */
@WebServlet("/PatientReg")
public class PatientReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		   out.println("<html>");
		   out.println("<head>");
	       out.println("<title>NewLife Hospital</title>");
	       out.println("</head>");
	       out.print("<body>");
	       
			String name =request.getParameter("name");
			String age=request.getParameter("age");
			String animalSpecies=request.getParameter("animalSpecies");
			String ownerName=request.getParameter("ownerName");
			String contact =request.getParameter("contact");
			String email =request.getParameter("email");
			String password =request.getParameter("password");
			
			PatientBean pb=new PatientBean();
			pb.setName(name);
			pb.setAge(age);
			pb.setAnimalSpecies(animalSpecies);
			pb.setOwnerContactNum(contact);
			pb.setOwnerName(ownerName);
			pb.setEmail(email);
			pb.setPassword(password);
			
			  int status=PatientDao.save(pb);  
		        if(status>0){  
		            out.println("<h3>Registered successfully!</h3>");
		            out.print("<br>");
		            request.getRequestDispatcher("PatientLogin.jsp").include(request, response);  
		        }else{  
		        	RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");  
		        	rd.forward(request, response);
			        }  
		          
		        out.close();  
		    
			
			out.print("<br"
					+ "></body>");
			out.print("</html>");
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		   out.println("<html>");
		   out.println("<head>");
	       out.println("<title>NewLife Hospital</title>");
	       out.println("</head>");
	       out.print("<body>");
	       
			String name =request.getParameter("name");
			String age=request.getParameter("age");
			String animalSpecies =request.getParameter("animalSpecies");
			String ownerName =request.getParameter("ownerName");
			String ownerContactNum =request.getParameter("ownerContactNum");
			
			String email = request.getParameter("email");
			
			PatientBean up=new PatientBean();
			up.setName(name);
			up.setAge(age);
			up.setOwnerContactNum(ownerContactNum);
			up.setAnimalSpecies(animalSpecies);
			up.setOwnerName(ownerName);
			up.setEmail(email);
			
			  int status=PatientDao.update(up);  
		        if(status>0){  
		            out.println("<center><h3>update successfully!</h3></center>");  
		            request.getRequestDispatcher("PatientProfileUpdate.jsp").include(request, response);  
		        }else{  
		        	
		        	out.println("Sorry! unable to update record");  
		        }  
		          
		        out.close();  
		    
			
			out.print("<br></body>");
			out.print("</html>");
		
	
	}
}
