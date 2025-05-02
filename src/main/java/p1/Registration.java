package p1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

@WebServlet("/reg") //I added.
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Registration() {
        super();      
    }
    
    @Override //Just trying to check by put this annotation that this method is overridden?-->YES
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("do Get");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}  
    @Override //Just trying to check by put this annotation that this method is overridden?-->YES
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("do Post");
    	String name = request.getParameter("firstName");
		String email = request.getParameter("emailId");
		String mobile = request.getParameter("mobile");
		System.out.println(name);
		System.out.println(email);
		System.out.println(mobile);
		//doGet(request, response); //I commented out.
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // // Load the MySQL JDBC driver
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/augdb", "root", "admin");
			Statement stmnt = con.createStatement();
			stmnt.executeUpdate("insert into registration values('"+name+"','"+email+"','"+mobile+"')");
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
