package myproject.com.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import myproject.com.model.Database;
import myproject.com.model.DatabaseConnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

@Controller
public class DatabaseConnectionController {
	
	// inject via application.properties
	@Value("${welcome.message:test}")
	private String message = "Hello World";
	
	@RequestMapping("/")
	public String welcome(Model model) {
		Database database = new Database();
		model.addAttribute("database", database);
	    return "welcome";
	}
	
//	@RequestMapping(value = "/", method = RequestMethod.POST) 
//	public String saveOrUpdateUser(@ModelAttribute("database") Database database,
//			BindingResult result, Model model) {
//		//DatabaseConnection pg = new DatabaseConnection();
//		DatabaseConnection.createConnection(database.getHost(), database.getPort(),database.getSid(), database.getUsername(),database.getPassword());
//				return "welcome";
//	}
	
	@RequestMapping(value = "/newPage", method = RequestMethod.POST)
	public String newPage(@ModelAttribute("database") Database database,
			BindingResult result, Model model) throws SQLException {
		//aici pun un if sa vad daca exista conexiunea si daca nu sa ma intorc in pagina /
		boolean data = DatabaseConnection.createConnection(database.getHost(), database.getPort(),database.getSid(), database.getUsername(),database.getPassword());
		if( data  == true ) {
			Connection conn=DatabaseConnection.getConnection();
		//	ArrayList dataFromTable = viewTable(conn);
		//	model.addAttribute("dataFromTable", dataFromTable);
			return "newPage";
	    } else {
	    	return "welcome";	
	    }
	    			
	    			
	}
	
	
	@RequestMapping(value = "/ajaxCall" , method=RequestMethod.GET)
	public @ResponseBody String firstAjaxCall() {

		
		//logic
		return " 'hello' : 'luisa' ";

	}
	
//	public static ArrayList viewTable(Connection con) {
//	
//	    throws SQLException {
//
//		    Statement stmt = null;
//	    ArrayList<String> data = new ArrayList<String>();
//		    String query = "select OBJECT_NAME from dba_objects";
//		    try {
//		        stmt = con.createStatement();
//		        ResultSet rs = stmt.executeQuery(query);
//		       
//		        while (rs.next()) {
//		            String Name = rs.getString("OBJECT_NAME");
//		            data.add(Name);
//		            System.out.println(Name);
//	        }
//		        
//		        
//		    } catch (SQLException e ) {
//		    	 e.printStackTrace();
//		    	 return null;
//		    } finally {
//		        if (stmt != null) { stmt.close();
//		        }
//		        }
//		        
//		    }
//		    return data; 
//}
	}
	    