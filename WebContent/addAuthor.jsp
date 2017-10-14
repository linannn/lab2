<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AddAuthor</title>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">

	        <div class="page-header">
		        <h1>New Author</h1>
	        </div>

            <s:actionmessage cssClass="alert alert-danger"/>

	        <s:form method="post" action="addAuthor.action" cssClass="form-horizontal" theme="simple">
	        <div class="form-group">
                    <label class="col-sm-2 control-label" >AuthorID</label>
                    <div class="col-sm-4">
                        <s:textfield name="AuthorID"  cssClass="form-control"/>
                    </div>
             </div>
              <div class="form-group">
                    <label class="col-sm-2 control-label" >Name</label>
                    <div class="col-sm-4">
                        <s:textfield name="Name" cssClass="form-control"/>
                    </div>
             </div>
              <div class="form-group">
                    <label class="col-sm-2 control-label">Age</label>
                    <div class="col-sm-4">
                        <s:textfield name="Age" cssClass="form-control"/>
                    </div>
             </div>
              <div class="form-group">
                    <label class="col-sm-2 control-label">Country</label>
                    <div class="col-sm-4">
                        <s:textfield name="Country" cssClass="form-control"/>
                    </div>
             </div>
	        <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-4">
                        <s:submit cssClass="btn btn-primary" value = "AddAuthor"/>
                    </div>
            </div>
	        </s:form>
	        <a href="index.jsp" class="btn btn-info">
		        <span class="glyphicon glyphicon-arrow-left"></span>HomePage
			</a>
	        </div>
	        </div>
	        </div>
	        
</body>
</html>