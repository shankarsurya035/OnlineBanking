package bank;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;
public class DBLogic {
	ResultSet rs=null;
	private String id;

	
	public ResultSet RetrievedLogin(String uname, String pwd, String type)throws SQLException{
		
		rs = DBConnect.getStatement().executeQuery("select * from login where username='"+uname+"'and password='"+pwd+"' and type='"+type+"'");
		return rs;
		
	}
	
	public int newRegister(String name, String address, String phone,
			String email, String occupation, String income, String uname,
			String password, String pwd, String previousaccount, String date,
			String gender) throws SQLException {
		int i=0;
		Statement st;
		st = DBConnect.getStatement();
		st.executeUpdate("insert into login values(login_seq.nextval,'"+uname+"','"+password+"','customer','notapproved')");
		i=st.executeUpdate("insert into customer values(customer_seq.nextval,'"+name+"','"+address+"','"+phone+"','"+email+"','"+date+"','"+occupation+"','"+gender+"','"+previousaccount+"',login_seq.currval)");
		
		return i;
	}

	public ResultSet getAccno(String name, String address, String phone) throws SQLException{
		ResultSet rs=DBConnect.getStatement().executeQuery("select ACCOUNTNO from CUSTOMER where NAME='"+name+"' and ADDRESS='"+address+"' and PHONENO="+phone+"");
		return rs;
	}
	


	
public int newAdd(String name, String address, String gender,String phone,String email, String designation, String grade, String sal,String dept) throws SQLException {
	int i=0;
	Statement st;
	//String phno=Long.toString(phone);
	st = DBConnect.getStatement();
	i = st.executeUpdate("insert into employee values(employee_seq.nextval,'"+name+"','"+address+"',"+phone+",'"+email+"','"+designation+"','"+grade+"','"+sal+"',1,'"+dept+"','"+gender+"')");
	return i;
}

public ResultSet EditUser()throws SQLException{
	
	rs = DBConnect.getStatement().executeQuery("select * from EMPLOYEE");
	return rs;
}
public ResultSet RetrieveUser(Long id)throws SQLException{
	rs = DBConnect.getStatement().executeQuery("select * from employee where empid="+id+"");
	return rs;
}

public ResultSet RetrieveUserProfile(Long id,String uname)throws SQLException{
	rs = DBConnect.getStatement().executeQuery("select c.name,c.address,c.phoneno,c.email,c.occupation,l.username,l.password from customer c,login l where c.cid=l.sl_no and l.USERNAME='"+uname+"'");
	return rs;
}
public int UpdateUser(String name, String gender, String address, String phone,
		String email, String designation, String grade, String sal, String id) throws SQLException {
	System.out.println("entry");
	int i=0;
	i = DBConnect.getStatement().executeUpdate("update employee set name='"+name+"',address='"+address+"',phoneno='"+phone+"',email='"+email+"',designation='"+designation+"',grade='"+grade+"',salary='"+sal+"',gender='"+gender+"' where empid='"+id+"'");
	System.out.println("entry1");
	return i;
}
public int UpdateUserp(String name,String address, String phone,
		String email, String occupation, String uname,String pass,String ss) throws SQLException {
	System.out.println("entry");
	int i=0;
	 DBConnect.getStatement().executeUpdate("update customer  set name='"+name+"',address='"+address+"',phoneno='"+phone+"',email='"+email+"',OCCUPATION='"+occupation+"' where cid="+ss+"");
	i=DBConnect.getStatement().executeUpdate("update login  set username='"+uname+"',password='"+pass+"' where SL_NO="+ss+"");
	System.out.println("entry1");
	return i;
}

public ResultSet Deleteemployee() throws SQLException {
	rs=DBConnect.getStatement().executeQuery("select * from employee");
	return rs;
}

public ResultSet Delete(Long id2)throws SQLException {
ResultSet rs=DBConnect.getStatement().executeQuery("select * from EMPLOYEE WHERE empid="+id2+"");
	return rs;
}
public int confDelete(Long id)throws SQLException{
	int i=0;
	i=DBConnect.getStatement().executeUpdate("delete from employee where EMPID="+id+"");
	
	return i;
}
public int newAddloan(String category, String rate, String date,String amount) throws SQLException {
	int i=0;
	Statement st;
		st = DBConnect.getStatement();
	i = st.executeUpdate("insert into loandetails values(loandetails_seq.nextval,'"+category+"','"+rate+"','"+amount+"','"+date+"')");
	return i;
}
public ResultSet ViewUser()throws SQLException{
	
	rs = DBConnect.getStatement().executeQuery("select * from EMPLOYEE");
	return rs;
}
public ResultSet View1User(Long id)throws SQLException{
	rs = DBConnect.getStatement().executeQuery("select * from employee where empid="+id+"");
	return rs;
}
public ResultSet EditLoan1()throws SQLException{
	
	rs = DBConnect.getStatement().executeQuery("select * from LOANDETAILS");
	return rs;
}
public ResultSet RetrieveLoan(Long id)throws SQLException{
	rs = DBConnect.getStatement().executeQuery("select * from LOANDETAILS where loanid="+id+"");
	return rs;
}
public int UpdateLoan(String category, String rate, String date, String amount, long id) throws SQLException {
	
	int i=0;
	i = DBConnect.getStatement().executeUpdate("update LOANDETAILS set category='"+category+"',RATEOFINTEREST='"+rate+"',MAXIMUMAMOUNTLIMIT	='"+amount+"',MAXIMUMTIMEPERIOD='"+date+"' where loanid='"+id+"'");
	return i;
}
public ResultSet DeleteLoan() throws SQLException {
	rs=DBConnect.getStatement().executeQuery("select * from LOANDETAILS");
	return rs;
}
public ResultSet DeleteLoan1(Long id2)throws SQLException {
	ResultSet rs=DBConnect.getStatement().executeQuery("select * from LOANDETAILS WHERE loanid="+id2+"");
		return rs;
	}
public int confDeleteloan(Long id)throws SQLException{
	int i=0;
	i=DBConnect.getStatement().executeUpdate("delete from LOANDETAILS where LOANID="+id+"");
	
	return i;
}
public ResultSet ApproveNRejectUser()throws SQLException{
	
	rs = DBConnect.getStatement().executeQuery("select * from CUSTOMER");
	return rs;
}
public ResultSet ApproveNRejectUserloan()throws SQLException{
	
	rs = DBConnect.getStatement().executeQuery("select * from CUSTOMERLOAN  ");
	return rs;
}
public ResultSet ApproveUser(Long id)throws SQLException{
	rs=DBConnect.getStatement().executeQuery("select c.accountno,c.name,c.address,c.phoneno,c.email,c.occupation,c.gender,l.username,l.password,l.statusforaccount from customer c,login l where c.cid=l.sl_no and c.accountno="+id+"");	
	return rs;
}
public ResultSet ApproveUserloan(Long id)throws SQLException{
	System.out.println("shello");
	rs=DBConnect.getStatement().executeQuery("select * from customerloan where accountno="+id+"");	
	System.out.println("shello1");
	return rs;
	
}
public int Approved(Long id) throws SQLException{
	int i=0;
	System.out.println(id);
	i=DBConnect.getStatement().executeUpdate("update login set statusforaccount='approved' where sl_no=(select cid from customer where accountno="+id+")");
	return i;
}



public int Approvedl(Long id,String issueddate,String  interest) throws SQLException{
	int i=0;
	System.out.println(id);
	i=DBConnect.getStatement().executeUpdate("update customerloan set status='Sanctioned',INTEREST="+interest+", ISSUEDDATE='"+issueddate+"' where  accountno="+id+" ");
	return i;
}
public int Rejected(Long id)throws SQLException{
	int i=0;
	System.out.println(id);
	i=DBConnect.getStatement().executeUpdate("update login set statusforaccount='notapproved' where sl_no=(select cid from customer where accountno="+id+")");
	return i;
}
public int Rejectedl(Long id,String issueddate,String  interest)throws SQLException{
	int i=0;
	System.out.println(id);
	i=DBConnect.getStatement().executeUpdate("update  customerloan set status='Not Sanctioned',INTEREST="+interest+", ISSUEDDATE='"+issueddate+"' where  accountno="+id+" ");
	return i;
}
public int newApply(String account,String reason) throws SQLException {
	int i=0;
	Statement st;
	st = DBConnect.getStatement();
	i = st.executeUpdate("insert into DELETEACCOUNT values(DELETEACCOUNT_seq.nextval,'"+account+"','"+reason+"')");
	return i;
}
public ResultSet Deleteaccount() throws SQLException {
	rs=DBConnect.getStatement().executeQuery("select * from DELETEACCOUNT");
	return rs;
}
public ResultSet Deleteaccount1(Long id2)throws SQLException {
	ResultSet rs=DBConnect.getStatement().executeQuery("select c.accountno,c.name,c.address,c.occupation ,c.cid from customer c where c.accountno="+id2+"");
		return rs;
	}

public int Deleteaccount2(Long id)throws SQLException{
	int i=0;
	//i=DBConnect.getStatement().executeUpdate("delete from customer where ACCOUNTNO="+id+"");
	i=DBConnect.getStatement().executeUpdate("delete from login where SL_NO="+id+"");
	return i;
}







public ResultSet ValidAccountno(Long accountno)throws SQLException {
	ResultSet rs=DBConnect.getStatement().executeQuery("select * from CUSTOMER where ACCOUNTNO="+accountno+"");
	return rs;
}

public ResultSet getBalanceInfo(Long accountno) throws SQLException{
	ResultSet rs=DBConnect.getStatement().executeQuery("select * from CUSTOMERACCOUNT where ACCOUNTNO="+accountno+"");
	return rs;
}

public int UpdateBal(Long accountno, Long fbal)throws SQLException {
	int i=DBConnect.getStatement().executeUpdate("update CUSTOMERACCOUNT set BALANCE="+fbal+" where ACCOUNTNO="+accountno+"");
	return i;
}
public int InsertBal(Long accountno, Long fbal)throws SQLException {
	int i=DBConnect.getStatement().executeUpdate("insert into CUSTOMERACCOUNT values(customeraccount_seq.nextval,'"+accountno+"', "+fbal+")");
	return i;
}
public ResultSet ValidAccountno1(Long accountno)throws SQLException {
	ResultSet rs=DBConnect.getStatement().executeQuery("select * from CUSTOMER where ACCOUNTNO="+accountno+"");
	return rs;
}

public ResultSet getBalanceInfo1(Long accountno) throws SQLException{
	ResultSet rs=DBConnect.getStatement().executeQuery("select * from CUSTOMERACCOUNT where ACCOUNTNO="+accountno+"");
	return rs;
}

public int UpdateBal1(Long accountno, Long fbal)throws SQLException {
	int i=DBConnect.getStatement().executeUpdate("update CUSTOMERACCOUNT set BALANCE="+fbal+" where ACCOUNTNO="+accountno+"");
	return i;
}

public ResultSet ValidAccountno2(Long accountno) throws SQLException {
	
	ResultSet rs=DBConnect.getStatement().executeQuery("select * from CUSTOMER where ACCOUNTNO="+accountno+"");
	return rs;
}

public ResultSet getBalanceInfo2(Long accountno) throws SQLException {
	ResultSet rs=DBConnect.getStatement().executeQuery("select * from CUSTOMERACCOUNT where ACCOUNTNO="+accountno+"");
	return rs;
}
public int Deposite(Long accno,Long amount) throws SQLException
{
	int i=DBConnect.getStatement().executeUpdate("insert into CUSTOMERACCOUNT values(CUSTOMERACCOUNT_SEQ.nextval,"+accno+","+amount+")");
	return i;
}
public ResultSet checkAccountno(Long id)throws SQLException {
	ResultSet rs=DBConnect.getStatement().executeQuery("select * from customer  where accountno="+id+"");
	return rs;
}
public ResultSet retriveBalance(Long accno) throws SQLException
{
	ResultSet rs=DBConnect.getStatement().executeQuery("select balance from customeraccount where accountno="+accno+"");
	return rs;
}
public int updateBalance(Long accno, Long finalbalance) throws SQLException{
	int i=DBConnect.getStatement().executeUpdate("update CUSTOMERACCOUNT set balance="+finalbalance+" where accountno="+accno+"");
	System.out.println("update balance");
	return i;
}
public int updateBalance1(Long accno, Long finalbalance) throws SQLException{
	int i=DBConnect.getStatement().executeUpdate("update CUSTOMERACCOUNT set balance="+finalbalance+" where accountno="+accno+"");
	System.out.println("update balance1");
	return i;
}

public ResultSet retrivedLoan(Long id) throws SQLException
{
	ResultSet rs=DBConnect.getStatement().executeQuery("select * from loandetails where loanid="+id+"");
	return rs;
}
public int applyLoan(Long loanid, Long account, String date, Long gaccno,
		String item, String reason, String occupation, Long income,
		String issuedate, String status, Long time, Long amount, String category, Long roi) throws SQLException {
	
	int i=DBConnect.getStatement().executeUpdate("insert into customerloan values(CUSTOMERLOAN_SEQ.nextval,"+loanid+",'"+category+"',"+account+","+time+","+amount+","+roi+",'"+issuedate+"','"+date+"',"+gaccno+",'"+reason+"','"+item+"','"+status+"','"+occupation+"',"+income+")");
	return i;
}

public ResultSet retriveLoanDetails()throws SQLException {
	ResultSet rs=DBConnect.getStatement().executeQuery("select * from LOANDETAILS");
	return rs;
}
public int AddNotice(String subject,String content,Long account,String from) throws SQLException {
	int i=DBConnect.getStatement().executeUpdate("insert into noticeboard values(NOTICEBOARD_SEQ.nextval,'"+subject+"','"+content+"',"+account+",'"+from+"')");
	return i;
}
public ResultSet ViewNoticeDetails(Long id)throws SQLException
{
	ResultSet rs=DBConnect.getStatement().executeQuery("select * from noticeboard where NOTICENO="+id+"");
	return rs;
}
public ResultSet Noticedetail()throws SQLException
	{
		ResultSet rs=DBConnect.getStatement().executeQuery("select * from noticeboard ");
		return rs;
	}
public int DelNotice(Long id,String subject,String content,Long accno,String date) throws SQLException
{
	int i=DBConnect.getStatement().executeUpdate("delete from noticeboard where noticeno="+id+"");
	return i;
}
public ResultSet view(Long account)throws SQLException
{
	ResultSet rs=DBConnect.getStatement().executeQuery("select * from noticeboard where receiveraccountno="+account+"");
	return rs;
}
public int Deletion(String id2) throws SQLException 
{
	int i=DBConnect.getStatement().executeUpdate("delete from noticeboard where NOTICENO="+id2+"");
	return i;
}
}
