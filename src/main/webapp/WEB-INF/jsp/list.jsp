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
<input type="button" value="添加" onclick="location='xia.do'">
<form id="page" action="list.do" method="post">
<input type="hidden" name="cpage" value="${page.pageNum}">
电影名称:<input type="text" name="dname" value="${map.dname}">
<input type="submit" value="查询">
</form>
<table>
<tr>
<td>
<input type="checkbox" name="qx" onclick="qx()">全选/全不选
<input type="checkbox" name="fx" onclick="fx()">
</td>
<td>编号</td>
<td>电影名称</td>
<td>介绍</td>
<td>导演</td>
<td>拍摄时间</td>
<td>类型</td>
<td>操作</td>
</tr>
<c:forEach items="${list}" var="e">
<tr>
<td><input type="checkbox" name="did" value="${e.did}"></td>
<td>${e.did}</td>
<td>${e.dname}</td>
<td>${e.js}</td>
<td>${e.dy}</td>
<td>${e.date}</td>
<td>${e.tname}</td>
<td>
<input type="button" value="删除" onclick="location='delete.do?did=${e.did}'">
<input type="button" value="修改" onclick="location='show.do?did=${e.did}'">
</td>
</tr>
</c:forEach>
<tr>
<td colspan="9">
<input type="button" value="首页" onclick="page('1')">
<input type="button" value="上一页" onclick="page(${page.pageNum-1})">
<input type="button" value="下一页" onclick="page(${page.pageNum+1})">
<input type="button" value="尾页" onclick="page(${page.pages})">
</td>
</tr>
</table>
<input type="button" value="批量删除" onclick="del()"> 
</body>
<script type="text/javascript">
function page(cpage) {
	
	$("[name='cpage']").val(cpage);
	$("#page").submit();
	
}
function del() {
	
	var did=$("[name=did]:checked");
	var arr=new Array();
	for (var i = 0; i < did.length; i++) {
		
		arr.push(did[i].value);
	}
	
	location.href="delete.do?did="+arr.toString();
	
}
//全选
function qx() {
	
	if($("[name='qx']").is(":checked")){
		
		$("[name='did']").each(function(){
			
			this.checked=true;
			
		})
		
	}else{
		$("[name='did']").each(function(){
			
			this.checked=false;
			
		})
	}
}
//反选
function fx() {
	
	var did=$("[name='did']");
	for (var i = 0; i < did.length; i++) {
		
		if(did[i].checked==false){
			did[i].checked=true;
		}
		else{
			did[i].checked=false;
		}
	}
}
</script>
</html>