<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        .form-body { padding: 40px; }
        /* 플로팅 라벨 효과 */
        .form-floating > .form-control:focus ~ label { color: var(--primary-color); }
        .btn-submit { 
            background: var(--primary-color); color: white; border: none;
            padding: 12px 30px; border-radius: 10px; font-weight: 600;
            transition: all 0.3s; width: 100%;
        }
        .btn-submit:hover { background: #357abd; transform: translateY(-2px); }
    </style>
</head>
<body>

<div class="form-card">
    <div class="form-header">
        <h3 class="m-0">${member.name} 님의 수정화면</h3>
        <p class="small opacity-75 mt-2">당신의 생각을 자유롭게 적어주세요.</p>
    </div>
    
    <div class="form-body">
    
        <form:form modelAttribute="member" action="/member/update" method="post">
            
            <div class="form-floating mb-3">
                <input type="text" name="no" class="form-control shadow-none" id="no" placeholder="no" value="${member.no}" required>
                <label for="no">회원번호</label>
            </div>

            <div class="form-floating mb-3">
                <input type="text" name="id" class="form-control shadow-none" id="id" value="${member.id}" readonly>
                <label for="id">회원아이디</label>
            </div>
            <div class="form-floating mb-3">
                <input type="text" name="name" class="form-control shadow-none" id="name" placeholder="name" value="${member.name}" required>
                <label for="name">이름</label>
            </div>
            
            <div class="form-floating mb-3">
                <input type="password" name="pw" class="form-control shadow-none" id="pw" placeholder="pw" value="${member.pw}" required>
                <label for="pw">비밀번호</label>
            </div>
<div class="btn-area">
                       
                <form:select path="authList[0].auth">
                    <form:option value="" label="=== 선택해 주세요 ===" />
                    <form:option value="ROLE_USER" label="사용자" />
                    <form:option value="ROLE_MEMBER" label="회원" />
                    <form:option value="ROLE_ADMIN" label="관리자" />
                </form:select>
                <form:select path="authList[1].auth">
                    <form:option value="" label="=== 선택해 주세요 ===" />
                    <form:option value="ROLE_USER" label="사용자" />
                    <form:option value="ROLE_MEMBER" label="회원" />
                    <form:option value="ROLE_ADMIN" label="관리자" />
                </form:select>
                <form:select path="authList[2].auth">
                    <form:option value="" label="=== 선택해 주세요 ===" />
                    <form:option value="ROLE_USER" label="사용자" />
                    <form:option value="ROLE_MEMBER" label="회원" />
                    <form:option value="ROLE_ADMIN" label="관리자" />
                </form:select>
           
        </div>
            

            <div class="d-flex gap-2">
                <a href="/member/memberList" class="btn btn-light w-25" style="width: 40% !important; white-space: normal;"><br>리스트 </a>
                <button type="submit" class="btn btn-submit">수정전송</button>
                <button type="reset" class="btn btn-submit">수정취소</button>
            </div>
            
        </form:form>
    </div>
</div>

</body>
</html>