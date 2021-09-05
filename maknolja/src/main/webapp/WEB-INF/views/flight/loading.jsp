<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<title>샘플 애플리케이션</title>
<style>
        body{
            
            background-color:#f5f7fa;
        }
</style>
</head>
<body>
<div class="container my-3">
	        <h1>예약페이지로 이동합니다</h1>
        <form method="post" action="registerto">
            <input type="hidden"name="userId" id="userId" value="<%=request.getAttribute("userId")%>">
            <input type="hidden"name="stdayTime" id="stdayTime" value="<%=request.getAttribute("stdayTime")%>">
            <input type="hidden"name="stdayAirplaneCode" id="stdayAirplaneCode" value="<%=request.getAttribute("stdayAirplaneCode")%>">
            <input type="hidden"name="rtdayAirplaneCode" id="rtdayAirplaneCode" value="<%=request.getAttribute("rtdayAirplaneCode")%>">
            <input type="hidden"name="stdayAirportCode" id="stdayAirportCode" value="<%=request.getAttribute("stdayAirportCode")%>">
            <input type="hidden"name="stdayEndAirportCode" id="stdayEndAirportCode" value="<%=request.getAttribute("stdayEndAirportCode")%>">
            <input type="hidden"name="startname" id="startname" value="<%=request.getAttribute("startname")%>">
            <input type="hidden"name="rtartname" id="rtartname" value="<%=request.getAttribute("rtartname")%>">

            <button class="btn btn-primary" type="submit">확인</button>
        </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>

</script>
</body>
</html>