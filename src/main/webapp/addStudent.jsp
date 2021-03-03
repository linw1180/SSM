<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>学生注册</title>
</head>
<body>
    <div align="center">
        <form action="student/addStudent.do" method="get">
            <table border="1px">
                <tr>
                    <td>姓名</td>
                    <td><input type="text" name="name" /></td>
                </tr>
                <tr>
                    <td>年龄</td>
                    <td><input type="text" name="age" /></td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <input type="submit" value="注册"/>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="清空"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
