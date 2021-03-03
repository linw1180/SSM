<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>ajax-学生查询</title>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function(){

            //页面加载完毕，自动刷新数据
            loadStudentData();

            $("#loadDataBtn").click(function(){
                //点击按钮刷新数据
                loadStudentData();
            })
        })

        //方法封装
        function loadStudentData(){
            $.ajax({
                url:"student/queryStudent.do",
                type:"get",
                dataType:"json",
                success:function(data){
                    //清除旧数据
                    $("#info").html("");
                    $.each(data, function(i,n){
                        $("#info").append("<tr>")
                            .append("<td>"+n.id+"</td>")
                            .append("<td>"+n.name+"</td>")
                            .append("<td>"+n.age+"</td>")
                            .append("</tr>");
                    })
                }
            })
        }
    </script>
</head>
<body>
    <div align="center">
        <table border="1px">
            <thead>
            <tr>
                <th>学号</th>
                <th>姓名</th>
                <th>年龄</th>
            </tr>
            </thead>
            <tbody id="info">

            </tbody>
        </table>
        <input type="button" id="loadDataBtn" value="刷新数据"/>
    </div>

</body>
</html>
