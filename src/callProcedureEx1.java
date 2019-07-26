import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class callProcedureEx1 {
	private String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private String user = "scott";
	private String pwd = "TIGER";
	private Connection con;

	public callProcedureEx1(int deptno, String dname, String loc) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			this.con = DriverManager.getConnection(url, user, pwd);
			String query = "{call insertCopy_Dept(?, ?, ?)}"; // insertCopy_Dept 저장프로시저 호출하기 위한 query문
			CallableStatement cstmt = con.prepareCall(query);

			cstmt.setInt(1, deptno);
			cstmt.setString(2, dname);
			cstmt.setString(3, loc);

			cstmt.execute();
			cstmt.close();
			con.close();

		} catch (Exception e) {

		}
	}

}
