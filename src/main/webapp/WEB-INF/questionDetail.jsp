<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Question Detail</title>
</head>
<body>
	<div class="header">
		<a href="/">Home</a>
		<h1>Can you Answer This?</h1>	
	</div>
	
	<h3>Question: <c:out value="${question.content}" /></h3>
	
	<h4>Tags</h4>
	<ul>
	<c:forEach items="${question.tags}" var="tag">
		<li><c:out value="${tag.name}" /></li>
	</c:forEach>
	</ul>
	
	<h4>Answers</h4>
	<ul>
	<c:forEach items="${question.answers}" var="answer">
		<li><c:out value="${answer.content}" /></li>
	</c:forEach>
	</ul>
	
	<form:form action="/questions/${question.id}/add_answer" modelAttribute="newAnswer" method="POST">
		<form:label path="content">Answer: 
		<form:errors path="content" />
		<form:input path="content" />
		</form:label>
		
		<input type="submit" value="Answer" />
	</form:form>
	
	
	</body>
</html>