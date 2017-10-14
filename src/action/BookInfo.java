package action;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import Bean.Book;
import database.DataOperation;

public class BookInfo extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Book book = new Book();
	private String ISBN = "";
	public String execute() throws SQLException {
		String sql = "select * from book where ISBN = \""+ISBN+"\"";
		ResultSet rs = DataOperation.getInstance().query(sql);
		while (rs.next()) {
			book.setISBN(rs.getString(1));
			book.setTitle(rs.getString(2));
			book.setAuthorID(rs.getString(3));
			book.setPublisher(rs.getString(4));
			book.setPublishDate(rs.getString(5));
			book.setPrice(rs.getFloat(6));
		}
		return SUCCESS;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
}
