import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.GregorianCalendar;

public class Main {

	public static void main(String[] args) {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		String host = "127.0.0.1";
		String dbName = "schuldatenbank";
		int port = 3306;
		String mySqlUrl = "jdbc:mysql://" + host + ":" + port + "/" + dbName;
		try {
			Connection connection = DriverManager.getConnection(mySqlUrl,
					"root", "");
			Statement statement = connection.createStatement();

			ResultSet selectSchueler = statement
					.executeQuery("SELECT * FROM s_schueler");
			System.out.println("Schüler:");
			printSchueler(selectSchueler);

			System.out.println("Insert:");
			statement = connection.createStatement();
			statement
					.executeUpdate("Insert into s_schueler values (2,'Test','Asdf','1955-12-25','Testort','03TB')");
			ResultSet selectSchueler2 = statement
					.executeQuery("SELECT * FROM s_schueler where s_id = 2");
			printSchueler(selectSchueler2);

			System.out.println("Update:");
			statement
					.executeUpdate("UPDATE `schuldatenbank`.`s_schueler` SET `s_gebdat`='2000-02-03' WHERE `s_id`='2'");
			selectSchueler2 = statement
					.executeQuery("SELECT * FROM s_schueler where s_id = 2");
			printSchueler(selectSchueler2);

			System.out.println("Delete:");
			statement
					.executeUpdate("DELETE FROM `schuldatenbank`.`s_schueler` WHERE `s_id`='2'");
			selectSchueler = statement.executeQuery("SELECT * FROM s_schueler");
			printSchueler(selectSchueler);

			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void printSchueler(ResultSet set) {
		try {
			while (set.next()) {
				System.out.println("Name: "
						+ set.getString("s_vorname")
						+ ' '
						+ set.getString("s_nachname")
						+ " Gebdat: "
						+ set.getDate("s_gebdat", GregorianCalendar.getInstance())
								.toString() + " Ort: " + set.getString("s_ort")
						+ " Klasse: " + set.getString("s_k_klasse"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
