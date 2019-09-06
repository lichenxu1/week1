<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/index_work.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/jquery-1.8.2.min.js">
</script>
</head>
<body>
<form action="">
电影名称:<input type="text" name="dname"><br>
介绍:<input type="text" name="js"><br>
导演姓名:<input type="text" name="dy"><br>
电影日期:<input type="text" name="date"><br>
类型:<select name="tid">
<option>===请选择===</option>
<c:forEach items="${xia}" var="e">
<option value="${e.tid}">${e.tname}</option>
</c:forEach>
</select><br>
<input type="button" value="添加" onclick="add()">
</form>
</body>
<script type="text/javascript">
function add() {
	
	$.post("add.do",$("form").serialize(),function(obj){
		if(obj>0){
			alert("添加成功")
			location.href="list.do"
		}
		else{
			alert("添加失败");
		}
	})
	
}
</script>
</html>