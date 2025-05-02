package p1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.cj.xdevapi.Result;
@WebServlet("/read")
public class ReadRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;    
    public ReadRegistration() {
        super();      
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get");
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		PrintWriter writer = response.getWriter();
		response.setContentType("text/html");
		
		/* writer.println("Hello");
		   writer.println("<input type='text'/>"); //String inside String. */
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/augdb", "root", "admin");
			Statement stmnt = con.createStatement();
			ResultSet result = stmnt.executeQuery("select * from registration");
			
			writer.println("<table border='1'>");
			writer.println("<tr>");
			writer.println("<th>");
			writer.println("Name");
			writer.println("</th>");
			writer.println("<th>");
			writer.println("Email Id");
			writer.println("</th>");
			writer.println("<th>");
			writer.println("Mobile");
		    writer.println("</th>");
			writer.println("</tr>");			
			while(result.next()) {
				writer.println("<tr>");
				writer.println("<td>");
				writer.println(result.getString(1));
				writer.println("</td>");
				writer.println("<td>");
				writer.println(result.getString(2));
				writer.println("</td>");
				writer.println("<td>");
				writer.println(result.getString(3));
			    writer.println("</td>");
				writer.println("</tr>");
			}			
			writer.println("</table>");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post");
		//doGet(request, response);
	}
}
