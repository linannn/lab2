package action;


import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import Bean.*;
import database.DataOperation;

public class AuthorInfo extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Author author = new Author();
	private String ID = "";
	public String execute() throws SQLException {
		String sql = "select * from author where ID = \""+ID+"\"";
		ResultSet rs = DataOperation.getInstance().query(sql);
		while (rs.next()) {
			author.setAuthorID(rs.getString(1));
			author.setName(rs.getString(2));
			author.setAge(rs.getString(3));
			author.setCountry(rs.getString(4));
		}
		return SUCCESS;
	}
	public Author getAuthor() {
		return author;
	}
	public void setAuthor(Author author) {
		this.author = author;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	
}
