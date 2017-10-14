package action;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import Bean.*;
import database.DataOperation;

public class AddBook extends ActionSupport implements ModelDriven<Object>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Book book = new Book();
	private String ID;
	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}
	public String execute() throws SQLException {
		int result = 0;
		List<Author> listAuthor = new ArrayList<Author>();
		String sqlAuthorID = "select * from author where ID = \""+book.getAuthorID()+"\"";
		this.setID(book.getAuthorID());
		ResultSet rsAuthorID = DataOperation.getInstance().query(sqlAuthorID);
		while (rsAuthorID.next()) {
			Author author = new Author();
			author.setAuthorID(rsAuthorID.getString(1));
			author.setName(rsAuthorID.getString(2));
			author.setAge(rsAuthorID.getString(3));
			author.setCountry(rsAuthorID.getString(4));
			listAuthor.add(author);
		}
		if (listAuthor.size() == 0) {
			return "noauthor";
		}
		String sql =  "insert into book values ('"+book.getISBN()+"','"+book.getTitle()+"','"+book.getAuthorID()
						+"','"+book.getPublisher()+"','"+book.getPublishDate()+"',"+book.getPrice()+")";
		
		result = DataOperation.getInstance().delete_save_updata(sql);
		if (result == 0) {
			return ERROR;
		}
		return SUCCESS;
	}

	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return book;
	}
}
