package crm.modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.sql.DataSource;

public class StartCon {
	
	public StartCon(DataSource dt) {
		try {
			con = dt.getConnection();
			st = con.createStatement();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}
	public ResultSet rs=null;
	public Statement st=null;
	public Connection con=null;

}
