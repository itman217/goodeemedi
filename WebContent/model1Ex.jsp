<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String user = "SCOTT";
		String pwd = "TIGER";
		Connection con;
		Statement stmt;
		ResultSet rs;

		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, user, pwd);
		String sql = "select * from emp inner join dept on emp.deptno = dept.deptno";

		stmt = con.createStatement();
		rs = stmt.executeQuery(sql);
		int cnt = 0;
	%>
	<table border="1">
		<tr>
			<th>부서번호</th>
			<th>이름</th>
			<th>급여</th>
			<th>커미션</th>
			<th>고용일</th>
			<th>부서이름</th>
		</tr>
	<%
		while (rs.next()) { // rs가 가리키는 결과셋(테이블)의 row가 있을 동안 반복
			// row단위로 처리
			int empno = rs.getInt("empno");
			String ename = rs.getString("ename");
			int sal = rs.getInt("sal");
			float comm = rs.getFloat("comm");
			Date hiredate = rs.getDate("hiredate");
			String dname = rs.getString("dname");
	%>
	<tr>
		<td><%=empno%></td>
		<td><%=ename%></td>
		<td><%=sal%></td>
		<td><%=comm%></td>
		<td><%=hiredate%></td>
		<td><%=dname%></td>
	</tr>

	<%
		System.out.println(rs.getInt("empno") + " | " + rs.getString("ename") + " | " + rs.getInt("sal") + " | "
					+ rs.getFloat("comm") + rs.getDate("hiredate") + " | " + rs.getString("dname"));
			cnt++;
		}
	%>
	</table>
	<%
		rs.close();
		stmt.close();
		con.close();
	%>

</body>
</html>