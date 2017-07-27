<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springside.org.cn/tags/form"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>综合演示用例</title>
<script
	src="${ctx}/static/jquery-validation/1.11.1/jquery.validate.min.js"
	type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/messages_bs_zh.js"
	type="text/javascript"></script>
<link href="${ctx}/static/jquery-validation/1.11.1/validate.css"
	type="text/css" rel="stylesheet" />
<script>
	$(document)
			.ready(
					function() {
						$("#account-tab").addClass("active");

						//为inputForm注册validate函数
						$("#inputForm")
								.validate(
										{
											rules : {
												name : {
													remote : "${ctx}/account/role/checkName?oldName="
															+ encodeURIComponent('${role.name}')
												},
												roleList : "required"
											},
											messages : {
												name : {
													remote : "角色名已存在"
												}
											},
											errorContainer : "#messageBox",
											errorPlacement : function(error,
													element) {
												if (element.is(":checkbox"))
													error.appendTo(element
															.parent().next());
												else
													error.insertAfter(element);
											}
										});
					});
</script>
</head>

<body>
	<h1>综合演示用例</h1>
	<form:form id="inputForm" modelAttribute="role"
		action="${ctx}/account/role/update" method="post"
		class="form-horizontal">
		<input type="hidden" name="id" value="${role.id}" />
		<fieldset>
			<legend>
				<small>管理角色</small>
			</legend>
			<div id="messageBox" class="alert alert-error input-large controls"
				style="display: none">输入有误，请先更正。</div>
			<div class="control-group">
				<label for="name" class="control-label">角色名:</label>
				<div class="controls">
					<input type="text" id="name" name="name" value="${role.name}"
						class="input-large required" />
				</div>
			</div>
			<div class="control-group">
				<label for="permissions" class="control-label">授权:</label>
				<div class="controls">
					<input type="text" id="permissions" name="permissions"
						value="${role.permissions}" class="input-large required" />
				</div>
			</div>
			<div class="form-actions">
				<input id="submit_btn" class="btn btn-primary" type="submit"
					value="提交" />&nbsp; <input id="cancel_btn" class="btn"
					type="button" value="返回" onclick="history.back()" />
				<p class="help-block">(保存后将发送JMS消息通知改动，而消息接收者将发送提醒邮件)</p>
			</div>
		</fieldset>
	</form:form>
</body>
</html>
