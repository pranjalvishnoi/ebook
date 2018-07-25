package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
@Component
public class LoginService {
private DataSource dataSource;
private JdbcTemplate jdbcTemplate;
	
	public DataSource getDataSource() {
			return dataSource;
	}
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate=new JdbcTemplate(dataSource);
		
	}
private static final class Rmapper implements RowMapper<String>{

	@Override
	public String mapRow(ResultSet rset, int rnum) throws SQLException {
		// TODO Auto-generated method stub
		if(rset==null)
		return null;
		else
		return rset.getString("PASS");
	}
	
	
}

	public boolean addNewUser(String user, String password, String mnum, String mailid)
{System.out.println("heremi");
		String msg="unique";
		List<String> result;
		String sql="SELECT PASS FROM REC1 WHERE ID=?";
		System.out.println("before");
		result=jdbcTemplate.query(sql,new Object[] {user}, new Rmapper());
		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             			
		
	
/*		System.out.println(result);
		if(result.isEmpty())
			System.out.println("emptyyyyyy"+result);	
*/		
		
	if(!result.isEmpty())
	{
		System.out.println("userId already taken ...");
		msg="userId taken";	
		return false;
	}
	else if(password.trim().length()>0)
	{	//System.out.println(password.length());
		//int mobnum=Integer.parseInt(mnum);
		sql="INSERT INTO REC1 VALUES(?,?,?,?)";
		System.out.println("BRFORE update");
		jdbcTemplate.update(sql, new Object[] {user, password, mnum, mailid});
		System.out.println("after");
		msg="DONEs";	
		return true;
		
	}
	else
		return false;
}
	
	
	
public boolean authenticate(String user, String password)
{
	List<String> result;
	String sql="SELECT PASS FROM REC1 WHERE ID=?";
	result=jdbcTemplate.query(sql,new Object[] {user}, new Rmapper());
	//String result=jdbcTemplate.queryForObject(sql, new Object[] {user}, String.class);
	System.out.println(result);

if(!result.isEmpty())
{
	System.out.println("BRFORE");
	System.out.println(password);
	System.out.println(result);
	if(result.get(0).equals(password))
	{
	return true;
	}
	else 
	{
	return false;
	}

}
else
	return false;
}


}