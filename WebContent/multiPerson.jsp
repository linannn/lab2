<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SearchAuthor</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">

			<div class="page-header">
	        	<h1>There are more than one person named <s:property value = "Name"/> 
	        	<s:property value = "#author.Name"/>
	        	</h1>
	        </div>
			<s:actionmessage cssClass="alert alert-danger"/>
	        <table class="table table-striped">
				<tr>
				<td>AuthorID</td>
				<td>Name</td>
				<td>Age</td>
				<td>Country</td>
				<td>Action</td>
			</tr>
			<s:iterator value = "listAuthor" var = "author" status = "sta">
			<tr>
				<td><s:property value = "#author.AuthorID"/></td>
				<td>
				
					<s:url id = "diffauthor" action = "searchAuthorID">
						<s:param name = "sAuthorID">
							<s:property value = "#author.AuthorID"/>
						</s:param>
					</s:url>
					<s:property value = "#author.Name"/>
				</td>
				<td><s:property value = "#author.Age"/></td>
				<td><s:property value = "#author.Country"/></td>
				<td><s:a href="%{diffauthor}" class="btn btn-default">
						<span class="glyphicon glyphicon-eye-open"></span>Choose
						</s:a>
			</tr>
		</s:iterator>
</table>
</div>
</div>
</div>
</body>
</html>