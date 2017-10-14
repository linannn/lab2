package action;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import Bean.Book;
import database.DataOperation;

public class AllBooks extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Book> list = new ArrayList<Book>();
	public String execute() throws Exception{
		String sql = "select * from book";
		ResultSet rs = DataOperation.getInstance().allBooks(sql);
			while (rs.next()) {
				Book book = new Book();
				book.setISBN(rs.getString(1));
				book.setTitle(rs.getString(2));
				book.setAuthorID(rs.getString(3));
				book.setPublisher(rs.getString(4));
				book.setPublishDate(rs.getString(5));
				book.setPrice(rs.getFloat(6));
				list.add(book);
			}
		return SUCCESS;
	}
	public List<Book> getList() {
		return list;
	}
	public void setList(List<Book> list) {
		this.list = list;
	}
}
