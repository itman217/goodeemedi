
public class Student {
	private int stuNo;
	private String stuName;
	private String stuDept;
	private boolean isGraduate;
	public Student(int stuNo, String stuName, String stuDept, boolean isGraduate) {
		super();
		this.stuNo = stuNo;
		this.stuName = stuName;
		this.stuDept = stuDept;
		this.isGraduate = isGraduate;
	}
	
	public int getStuNo() {
		return stuNo;
	}


	public void setStuNo(int stuNo) {
		this.stuNo = stuNo;
	}


	public String getStuName() {
		return stuName;
	}


	public void setStuName(String stuName) {
		this.stuName = stuName;
	}


	public String getStuDept() {
		return stuDept;
	}


	public void setStuDept(String stuDept) {
		this.stuDept = stuDept;
	}


	public boolean isGraduate() {
		return isGraduate;
	}


	public void setGraduate(boolean isGraduate) {
		this.isGraduate = isGraduate;
	}


	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
	
	
}
