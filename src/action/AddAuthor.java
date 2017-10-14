package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import Bean.*;
import database.DataOperation;
public class AddAuthor extends ActionSupport implements ModelDriven<Object>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Author author = new Author();
	
	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}
	public String execute() {
		int result = 0;
		String sql = "insert into author values ('" + author.getAuthorID()+"','"+author.getName()+"','"
					  +author.getAge()+"','"+author.getCountry()+"')";
		result = DataOperation.getInstance().delete_save_updata(sql);
		if (result == 0) {
			return ERROR;
		}
		return SUCCESS;
	}

	@Override
	public Object getModel() {
		
		return author;
	}
}
