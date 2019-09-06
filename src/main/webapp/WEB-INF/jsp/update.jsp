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
<input type="hidden" name="did" value="${show.did}">
电影名称:<input type="text" name="dname" value="${show.dname}"><br>
介绍:<input type="text" name="js" value="${show.js}"><br>
导演姓名:<input type="text" name="dy" value="${show.dy}"><br>
电影日期:<input type="text" name="date" value="${show.date}"><br>
类型:<select name="tid">
<option>===请选择===</option>
<c:forEach items="${xia}" var="e">
<option ${e.tid==show.tid ? "selected":''} value="${e.tid}">${e.tname}</option>
</c:forEach>
</select><br>
<input type="button" value="修改" onclick="update()">
</form>
</body>
<script type="text/javascript">
function update() {
	
	$.post("update.do",$("form").serialize(),function(obj){
		
		if(obj>0){
			
			alert("修改成功");
			location.href="list.do"
		}else{
			
			alert("修改失败");
		}
	})
	
}
</script>
</html>