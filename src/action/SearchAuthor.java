package action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import Bean.*;
import database.DataOperation;

public class SearchAuthor extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Book> list = new ArrayList<Book>();
	private String Name;
	private String sAuthorID;
	private List<Author> listAuthor = new ArrayList<Author>();
	
	public String getsAuthorID() {
		return sAuthorID;
	}

	public void setsAuthorID(String sAuthorID) {
		this.sAuthorID = sAuthorID;
	}

	public List<Book> getList() {
		return list;
	}

	public List<Author> getListAuthor() {
		return listAuthor;
	}

	public void setListAuthor(List<Author> listAuthor) {
		this.listAuthor = listAuthor;
	}

	public void setList(List<Book> list) {
		this.list = list;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String execute() throws SQLException {
		String sql = "select * from author where Name = \""+Name+"\"";
		if(Name.equals("")) {
			return "noinput";
		}
		ResultSet rs = DataOperation.getInstance().query(sql);
		while (rs.next()) {
			Author author = new Author();
			author.setAuthorID(rs.getString(1));
			author.setName(rs.getString(2));
			author.setAge(rs.getString(3));
			author.setCountry(rs.getString(4));
			listAuthor.add(author);
		}
		if (listAuthor.size() == 0) {
			return "noperson";
		}
		else {
			if (listAuthor.size() == 1) {
				String sqlBook = "select * from book where AuthorID = \""+listAuthor.get(0).getAuthorID()+"\"";
				ResultSet rsBook = DataOperation.getInstance().query(sqlBook);
				while (rsBook.next()) {
					Book book = new Book();
					book.setISBN(rsBook.getString(1));
					book.setTitle(rsBook.getString(2));
					book.setAuthorID(rsBook.getString(3));
					book.setPublisher(rsBook.getString(4));
					book.setPublishDate(rsBook.getString(5));
					book.setPrice(rsBook.getFloat(6));
					list.add(book);
				}
				if(list.size()==0) {
					return "nobook";
				}
				return SUCCESS;
			}
			else {
				return "multiperson";
			}
		}
		
	}
	public String byID() throws SQLException {
		String sqlBook = "select * from book where AuthorID = \""+sAuthorID+"\"";
		ResultSet rsBook = DataOperation.getInstance().query(sqlBook);
		while (rsBook.next()) {
			Book book = new Book();
			book.setISBN(rsBook.getString(1));
			book.setTitle(rsBook.getString(2));
			book.setAuthorID(rsBook.getString(3));
			book.setPublisher(rsBook.getString(4));
			book.setPublishDate(rsBook.getString(5));
			book.setPrice(rsBook.getFloat(6));
			list.add(book);
		}
		String sqlName = "select * from author where ID = \""+sAuthorID+"\"";
		ResultSet rsName = DataOperation.getInstance().query(sqlName);
		while(rsName.next()) {
			rsName.getString(1);
			this.setName(rsName.getString(2));
			rsName.getString(3);
			rsName.getString(4);
		}
		if(list.size()==0) {
			return "nobook";
		}
		return SUCCESS;
	}
}
