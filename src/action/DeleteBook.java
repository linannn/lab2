package action;

import com.opensymphony.xwork2.ActionSupport;

import database.DataOperation;

public class DeleteBook extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String ISBN = "";
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public String execute() {
		int result = 0;
		String sql = "delete from book where ISBN = \""+ISBN+"\"";
		result = DataOperation.getInstance().delete_save_updata(sql);
		if (result == 0) {
			return ERROR;
		}
		return SUCCESS;
		
	}
}
