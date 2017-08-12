<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ask a Question</title>
</head>
<body>
	<div class="header">
		<a href="/">Home</a>
		<h1>Ask a Question</h1>
	</div>
	
	<div class="content">
		<form action="/questions/create" method="GET">
			<label for="content">Question:</label> 
			<input type="text" name="content">
			
			<label for="tags">Tags:</label><input type="text" name="tags"/>
			
			<input type="submit" value="Ask Question"/>
		</form>
	
	</div>
</body>
</html>