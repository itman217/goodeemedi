import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class CallProcedureEx3 {
	private String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private String user = "scott";
	private String pwd = "TIGER";
	private Connection con;

	public CallProcedureEx3(int bno) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			this.con = DriverManager.getConnection(url, user, pwd);

			String query = "{call sp_boardTest(?, ?)}";

			CallableStatement cstmt = con.prepareCall(query);

			cstmt.setInt(1, bno);
			cstmt.registerOutParameter(2, java.sql.Types.REF_CURSOR);
			
			cstmt.execute();
			
			ResultSet rs = (ResultSet)cstmt.getObject(2);
			
			while(rs.next()) {
				System.out.println(rs.getString(1) + ", " + rs.getString("btitle") + ","
			+ rs.getString("buser") + ", " + rs.getString("bcontent") + ", " + rs.getInt("readcnt"));
				
			}
			
			rs.close();
			cstmt.close();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}