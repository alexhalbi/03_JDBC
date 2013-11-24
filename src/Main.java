import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Main {

	public static void main( String[] args) {
			try {
				Class.forName("com.mysql.jdbc.Driver").newInstance();
			} catch (InstantiationException | IllegalAccessException
					| ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		String host = "127.0.0.1";
		String dbName = "schuldatenbank";
		int port = 3306;
		String mySqlUrl = "jdbc:mysql://" + host + ":" + port + "/" + dbName;
		String embeddedDerbyUrl = "jdbc:derby" + dbName;
		try {
			Connection connection = DriverManager.getConnection(mySqlUrl, "root", "");
			Statement statement = connection.createStatement();
			
			ResultSet selectSchueler = statement.executeQuery("SELECT * FROM s_schueler");
			System.out.println("Schüler:");
			
			while(selectSchueler.next()) {
				System.out.println("Name: " + selectSchueler.getString("s_vorname") + ' ' + selectSchueler.getString("s_nachname"));
			}
			
			statement.executeUpdate("Insert into s_schueler values (2,'Test','Asdf','1955-12-25','Testort','03TB')");
			
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
