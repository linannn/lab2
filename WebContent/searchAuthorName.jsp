<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<title>AuthorBook</title>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">

			<div class="page-header">
	        	<h1>The Book(s) of <s:property value = "Name"/></h1>
	        </div>
	        <s:actionmessage cssClass="alert alert-danger"/>
	        <table class="table table-striped">
				<tr>
					<td>ISBN</td>
					<td>Title</td>
					<td>AuthorID</td>
					<td>Publisher</td>
					<td>PublishDate</td>
					<td>Price</td>
					<td>Actions</td>
				</tr>
				<s:iterator value = "list" var = "book" status = "sta">
				<tr>
					<td><s:property value = "#book.ISBN"/></td>
					<td>
						<s:url id = "bookdetail" action = "bookInfo">
							<s:param name = "ISBN">
								<s:property value = "#book.ISBN"/>
							</s:param>
						</s:url>
						<s:a href = "%{bookdetail}"><s:property value = "#book.Title"/></s:a>
					</td>
					<td><s:property value = "#book.AuthorID"/></td>
					<td><s:property value = "#book.Publisher"/></td>
					<td><s:property value = "#book.PublishDate"/></td>
					<td><s:property value = "#book.Price"/></td>
					<td>
 					<div class="btn-group">
						<s:a href="%{bookdetail}" class="btn btn-default">
						<span class="glyphicon glyphicon-eye-open"></span> View
						</s:a>
                          <!-- <a href="orders/${id}/edit" class="btn btn-default"> 
                           <span class="glyphicon glyphicon-edit"></span> Edit</a>-->
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
				<a href="index.jsp" class="btn btn-info">
				     <span class="glyphicon glyphicon-arrow-left"></span>HomePage
				</a>
			</div>
		</div>
	</div>
	
</body>
</html>