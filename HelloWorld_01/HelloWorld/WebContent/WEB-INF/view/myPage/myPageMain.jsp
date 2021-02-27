<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
    <!-- <meta http-equiv="refresh" content="0; url=dist/index.html"> -->
    <title>SB Admin</title>
</head>

<body>
    Go to <a href="dist/index.html">/dist/index.html</a>
</body>

    <script language="javascript">
        window.location.href = "<%=request.getContextPath()%>/myPage/index.ddit"
    </script>
</html>
