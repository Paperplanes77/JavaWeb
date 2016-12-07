<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>基本运算符 关系运算符  逻辑运算符</title>
</head>
<body bgcolor='${pagScope.color }' text='${pageScope.textclr }'>
	<h1>Use of implicit objects in EL</h1>
	<FONT color="${pageScope.foregr}" size="${pageScope.size}">
	</FONT><br/>
	value of num1=${pageScope.num1}<br/>
	value of num2=${pageScope.num2}<br/>
	value of num1=<b>${pageScope.num1}</b>*num2=<b>
	${pagScope.num2}=<b></b>${pageScope.num1}*${pageScope.num2}
	</b><br/>
	<span>5+3=</span> ${5+3}<br/>
	<span>!A=</span>${!A}<br/>
	<span>a=</span>${a=5 > 3 ? 1: 0}<br/>
	<span>boolean flag=</span>${true && false }<br/>
	<span>5==3</span>${5 eq 3}<br/>
	<span>5<=6</span>${5 le 6 }<br/>
	<%-- <span>是否相同</span>${5 ne 5}<br/> --%>
	<span>empty:</span>${empty 'abc' }<br/>
</body>
</html>