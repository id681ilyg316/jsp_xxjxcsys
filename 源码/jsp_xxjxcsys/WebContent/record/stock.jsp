<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
	<script type="text/javascript" src="js/list.js"></script>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/list.css"/>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<div class="container" style="width:100%;">
  		<div class="panel panel-success">
  			<div class="panel-heading">商品类别信息</div>
  			<div class="panel-body">
  				<form action="RecordServlet" method="post">
					<div style="float:left;margin-left:210px;"><input type="date" name="start" value="${start }" pattern="yyyy-MM-dd"/></div>
					<div style="float:left;margin-left:40px;font-weight:bold;">至</div>
					<div style="float:left;margin-left:40px;"><input type="date" name="end" value="${end }"/></div>
					<div style="float:left;margin-left:40px;">
						<select name="query" style="width:100px;height:25px;">
							<!--  <option value="saveRecord" <c:if test="${query=='saveRecord'}">selected="selected"</c:if>>充值记录</option> -->
							<option value="stock" <c:if test="${query=='stock'}">selected="selected"</c:if>>进货明细</option> 
							<option value="sale" <c:if test="${query=='sale'}">selected="selected"</c:if>>销售记录</option>
							<option value="saleItem" <c:if test="${query=='saleItem'}">selected="selected"</c:if>>销售明细</option>
						</select>
					</div>
					<div style="float:left;margin-left:50px;"><input type="submit" class="btn btn-sm btn-success" value="确定"/></div>
				</form>
  				<hr/>
  				<table class="table table-bordered" style="text-align:center;">
			 		<tr>
			 			<td>序号</td>
			 			<td>进货时间</td>
			 			<td>流水号</td>
			 			<td>商品条码</td>
			 			<td>商品名称</td>
			 			<td>进货数量</td>
			 			<td>进货单价</td>
			 			<td>进货金额</td>
			 			<td>供货商编号</td>
			 			<td>供货商</td>
			 		</tr>
<%
	int i=0;
%>
			 		<c:forEach items="${requestScope.list}" var="stock">
			 			<tr>
			 				<%i++; %>
			 				<td style="font-weight:bold;color:#f00;"><%=i %></td>
			 				<td>${stock.stime}</td>
			 				<td>${stock.sid }</td>
			 				<td>${stock.product.pid }</td>
			 				<td>${stock.product.pname }</td>
			 				<td>${stock.samount }</td>
			 				<td>${stock.sprice }</td>
			 				<td><fmt:formatNumber type="number" value="${stock.samount*stock.sprice }" pattern="0.00" maxFractionDigits="2"/></td>
			 				<td>${stock.provider.pid }</td>
			 				<td>${stock.provider.pname }</td>
			 			</tr>
			 		</c:forEach>
				</table>
  			</div>
  		</div>
  	</div>
  </body>
</html>
