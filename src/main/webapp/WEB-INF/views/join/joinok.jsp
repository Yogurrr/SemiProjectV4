<%@ page pageEncoding="UTF-8" %>

<div id="main">
    <div class="mt-5">
        <i class="fa-solid fa-user-tie fa-2xl"> 회원가입 </i>
        <hr>
    </div>
    <nav class="mt-3" style="--bs-breadcrumb-divider: ' > ';" aria-label="breadcrumb">
        <ul class="breadcrumb">
            <li class="breadcrumb-item active">
                <button type="button" disabled class="btn btn-light">이용약관</button></li>
            <li class="breadcrumb-item active">
                <button type="button" disabled class="btn btn-light">실명확인</button></li>
            <li class="breadcrumb-item active">
                <button type="button" disabled class="btn btn-light">정보입력</button></li>
            <li class="breadcrumb-item active">
                <button type="button" disabled class="btn btn-success">가입완료</button></li>
        </ul>
    </nav>
    <div class="mt-5 ms-3 mx-3">
        <h2>회원가입 완료</h2>
        <small class="text-muted">
            회원정보는 개인정보 취급방침에 따라 안전하게 보호되며,
            회원님의 명백한 동의없이 공개 또는 제3자에게 제공되지 않습니다.
        </small>
        <hr>
    </div>
    <div class="jumbotron bg-warning text-white col-10 offset-1 p-5 my-5">
        <h1>🎉 회원가입을 축하합니다!!🎉</h1>
        <p>게시판 글작성, 쇼핑몰 이용등의 일부 서비스는
            실명확인 후 이용하실 수 있습니다.<br>
            실명확인 후에도 가입하신 아이디는 변경할 수 없습니다.</p>
        <hr>
        <p>회원가입 이후 아이디와 비밀번호로 일반회원으로
            로그인하셔서 추가 인적사항등을 등록해주시기 바랍니다.<br>
            Lorem Ipsom과 함께 즐거운 시간 되십시오</p>
    </div>
    <div class="text-center">
        <button type="button" id="go2index" class="btn btn-danger">
            <i fas fa-home></i> 메인으로 이동
        </button>
    </div>
</div>