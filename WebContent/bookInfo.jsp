<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>BookInfo</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="page-header">
            	<h1>Book</h1><br/>
            	<h2><s:property value = "book.Title"/></h2>
            </div>
            <table class="table table-striped">
                 <tr>
                    <td class="span3">ISBN</td>
                    <td class="span9"><s:property value = "book.ISBN"/></td>
                </tr>
                <tr>
               	 	<s:url id = "authordetail" action = "authorInfo">
							<s:param name = "ID">
								<s:property value = "book.AuthorID"/>
							</s:param>
						</s:url>
                    <td class="span3">AuthorID</td>
                    <td class="span9">
                    <s:a href = "%{authordetail}">
                    <s:property value = "book.AuthorID"/></s:a>
                    </td>
                </tr>
                <tr>
                    <td class="span3">Publisher</td>
                    <td class="span9"><s:property value = "book.Publisher"/></td>
                </tr>
                <tr>
                    <td class="span3">PublishDate</td>
                    <td class="span9"><s:property value = "book.PublishDate"/></td>
                </tr>
                <tr>
                    <td class="span3">Price</td>
                    <td class="span9"><s:property value = "book.Price"/></td>
                </tr>
		</table>
		<a href="index.jsp" class="btn btn-info">
		        <span class="glyphicon glyphicon-arrow-left"></span>HomePage
		</a>
		</div>
	</div>
</div>
</body>
</html>