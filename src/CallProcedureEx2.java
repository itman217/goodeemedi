import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;

public class CallProcedureEx2 {
	private String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	private String user = "scott";
	private String pwd = "TIGER";
	private Connection con;

	public CallProcedureEx2(int deptno) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			this.con = DriverManager.getConnection(url, user, pwd);
			String query = "{call sp_test(?, ?)}";

			CallableStatement cstmt = con.prepareCall(query);

			cstmt.setInt(1, deptno); // 저장 프로시저의 in 매개변수 설정
			cstmt.registerOutParameter(2, java.sql.Types.INTEGER); // 저장 프로시저의 out 매개변수 설정

			cstmt.execute(); // 저장프로시저 실행

			System.out.print(cstmt.getInt(2));

			cstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
