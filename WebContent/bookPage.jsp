<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Books</title>
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">

			<div class="page-header">
	        	<h1>Books</h1><br>
	        	<s:form method="post" action="searchAuthorName.action" cssClass="form-horizontal" theme="simple">
                <div class="form-group">
                    <div class="col-sm-2">
                        <s:textfield name="Name" cssClass="form-control"/>
                    </div>
                <div class="form-group" >
                        <s:submit cssClass="btn btn-primary" value = "Search"/>
                </div>
				</div>
				</s:form>
	        </div>
	        <s:actionmessage cssClass="alert alert-danger"/>
	        <table class="table table-striped">
				<tr>
					<td>Title</td>
					<td>Publisher</td>
					<td>PublishData</td>
					<td>Price</td>
					<td>Actions</td>
				</tr>
				<s:iterator value = "list" var = "book" status = "sta">
				<tr>
					<td>
						<s:url id = "bookdetail" action = "bookInfo">
							<s:param name = "ISBN">
								<s:property value = "#book.ISBN"/>
							</s:param>
						</s:url>
						<s:a href = "%{bookdetail}"><s:property value = "#book.Title"/></s:a>
					</td>
					<td><s:property value = "#book.Publisher"/></td>
					<td><s:property value = "#book.PublishDate"/></td>
					<td><s:property value = "#book.Price"/></td>
					<td>
 					<div class="btn-group">
						<s:a href="%{bookdetail}" class="btn btn-default">
						<span class="glyphicon glyphicon-eye-open"></span> Detail
						</s:a>
                 		<s:url id = "deleteBook" action = "deleteBook">
							<s:param name = "ISBN">
								<s:property value = "#book.ISBN"/>
							</s:param>
						</s:url>
						<s:a href = "%{deleteBook}" class="btn btn-danger">
						<span class="glyphicon glyphicon-trash"></span>Delete
						</s:a>  
                          
                          
					</div>
					</td>
					</tr>
				</s:iterator>
				</table>
				<div align = "center">
	        	<a href="addBook.jsp" class="btn btn-info">
		        	<span class="glyphicon glyphicon-file"></span>Add New Book
				</a>
				</div>
				<br/>
				<br>
			</div>
		</div>
	</div>


</body>
</html>