<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../../base.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
<form method="post">
	<input type="hidden" name="CONTRACT_PRODUCT_ID" value="${contractPro.CONTRACT_PRODUCT_ID}"/>

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('updateContractPro.action','_self');">确定</a></li>
<li id="back"><a href="/findpro.action.action">返回</a></li>
</ul>
    </div>
</div>
</div>
</div>

<div class="textbox" id="centerTextbox">

    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
		修改货物信息
    </div>
    </div>
    </div>
<div>
    <div>

        <table class="commonTable" cellspacing="1">
            <tr>
                <td class="columnTitle_mustbe">厂家名称：</td>
                <td class="tableContent"><select name="factory_id">

                    <c:forEach items="${factoryListpro}" var="a">

                        <c:if test="${a.state == '2'}">
                        <c:if test="${a.factory_id == contractPro.factory_id}">
                            <option value="${a.factory_id}" selected="selected">${a.full_name}</option>
                        </c:if>

                        <c:if test="${a.factory_id != contractPro.factory_id}">
                            <option value="${a.factory_id}">${a.full_name}</option>
                        </c:if>
                        </c:if>
                    </c:forEach>
                </select></td>
                <td class="columnTitle_mustbe">货号：</td>
                <td class="tableContent"><input type="text" name="product_No" value="${contractPro.product_No}"/></td>
            </tr>
            <tr>
                <td class="columnTitle_mustbe">货物照片：</td>
                <td class="tableContent"><input type="text" name="product_Image" value="${contractPro.product_Image}"/></td>

            </tr>
            <tr>
                <td class="columnTitle_mustbe">数量：</td>
                <td class="tableContent"><input type="text" name="cnumber" value="${contractPro.cnumber}"/></td>
                <td class="columnTitle_mustbe">包装单位：</td>
                <td class="tableContent"><input type="text" name="packing_Unit" value="${contractPro.packing_Unit}"/>

                </td>
            </tr>
            <tr>
                <td class="columnTitle_mustbe">装率：</td>
                <td class="tableContent"><input type="text" name="loading_Rate" value="${contractPro.loading_Rate}"/></td>
                <td class="columnTitle_mustbe">箱数：</td>
                <td class="tableContent"><input type="text" name="box_Num" value="${contractPro.box_Num}"/></td>
            </tr>
            <tr>
                <td class="columnTitle_mustbe">单价：</td>
                <td class="tableContent"><input type="text" name="price" value="${contractPro.price}"/></td>
                <td class="columnTitle_mustbe">排序号：</td>
                <td class="tableContent"><input type="text" name="order_No" value="${contractPro.order_No}"/></td>
            </tr>

            <tr>
                <td class="columnTitle_mustbe">货物描述：</td>
                <td class="tableContent"><input type="text" name="product_Desc" value="${contractPro.product_Desc}"/></td>

            </tr>




        </table>
	</div>
</div>


</form>
</body>
</html>

