<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Choose</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="page-header">
            	<h1>There is not an author that he's ID is <s:property value = "ID"/></h1>
            </div>
           	<a href="index.jsp" class="btn btn-info">
		        <span class="glyphicon glyphicon-arrow-left"></span>HomePage
			</a>
	        	<a href="addAuthor.jsp" class="btn btn-info">
		        	<span class="glyphicon glyphicon-file"></span>AddAuthor
				</a>
		</div>
	</div>
</div>
</body>
</html>