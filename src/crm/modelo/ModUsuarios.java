package crm.modelo;

import java.sql.SQLException;

import javax.sql.DataSource;
import org.json.simple.JSONObject;
import org.json.simple.JSONArray;;

public class ModUsuarios {
	private DataSource dt;
	public ModUsuarios(DataSource dt) {
		this.dt = dt;
	}
	
	
	public String lista_usuaios() throws Exception {
		try {
			StartCon s = new StartCon(dt);
			String sql = "select id, nombre, alias from arcade_usuarios where f_active = 1 limit 10;";
			s.rs = s.st.executeQuery(sql);
			JSONArray usuarios = new JSONArray();
			while( s.rs.next() ) {
				JSONObject usuario = new JSONObject();
				usuario.put("id", s.rs.getString("id"));
				usuario.put("nombre", s.rs.getString("nombre"));
				usuario.put("alias", s.rs.getString("alias"));
				usuarios.add(usuario);
			}
			s.rs.close();
			s.st.close();
			s.con.close();
			return usuarios.toJSONString();
		} catch (SQLException e) {
			// TODO: handle exception
			return "Se prudujo un Error: " + e.getMessage();
		}
	}

}
