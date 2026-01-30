<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Write Post</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root { --primary-color: #4a90e2; }
        body { background: #f4f7f6; font-family: 'Segoe UI', sans-serif; }
        .form-card { 
            max-width: 600px; margin: 60px auto; 
            background: white; border-radius: 20px; 
            box-shadow: 0 10px 30px rgba(0,0,0,0.08); 
            overflow: hidden;
        }
        .form-header { background: var(--primary-color); padding: 30px; color: white; text-align: center; }
    </style>
</head>
<body>

<div class="form-card">
    <div class="form-header">
        <h3 class="m-0">${message}</h3>
        
    </div>
    <div class="form-body">
        <div class="d-flex gap-2">
                <button type="button" class="btn btn-light w-25" onclick="history.back()">back</button>
               <a href="/member/insertForm" class="btn btn-submit"><button type="submit"  class="btn btn-submit">회원가입</button></a> 
                 <a href="/member/boardList" class="btn btn-submit"><button type="reset" class="btn btn-submit">회원 리스트</button></a> 
        </div>
     </div>
</div>

</body>
</html>