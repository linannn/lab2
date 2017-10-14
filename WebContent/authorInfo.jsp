<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AuthorInfo</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="page-header">
            	<h1>Author</h1><br/>
            	<h2><s:property value = "author.AuthorID"/></h2>
            </div>
            <table class="table table-striped">
                 <tr>
                    <td class="span3">ID</td>
                    <td class="span9"><s:property value = "author.AuthorID"/></td>
                </tr>
                <tr>
                    <td class="span3">Name</td>
                    <td class="span9"><s:property value = "author.Name"/></td>
                </tr>
                <tr>
                    <td class="span3">Age</td>
                    <td class="span9"><s:property value = "author.Age"/></td>
                </tr>
                <tr>
                    <td class="span3">Country</td>
                    <td class="span9"><s:property value = "author.Country"/></td>
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