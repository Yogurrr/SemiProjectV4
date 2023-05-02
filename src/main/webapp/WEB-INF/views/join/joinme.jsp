<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="main">

    <script src="https://www.google.com/recaptcha/api.js"></script>

    <div class="mt-5">
        <i class="fa-solid fa-user-tie fa-2xl"> 회원가입 </i>
        <hr>
    </div>
    <nav class="mt-3" style="--bs-breadcrumb-divider: ' > ';" aria-label="breadcrumb">
        <ul class="breadcrumb">
            <li class="breadcrumb-item active">
                <button type="button" disabled class="btn btn-light">이용약관</button></li>
            <li class="breadcrumb-item">
                <button type="button" disabled class="btn btn-light">실명확인</button></li>
            <li class="breadcrumb-item">
                <button type="button" disabled class="btn btn-success">정보입력</button></li>
            <li class="breadcrumb-item">
                <button type="button" disabled class="btn btn-light">가입완료</button></li>
        </ul>
    </nav>
    <div class="mt-5 ms-3 mx-3">
        <h2>회원정보 입력</h2>
        <small class="text-muted">
            회원정보는 개인정보 취급방침에 따라 안전하게 보호되며,
            회원님의 명백한 동의없이 공개 또는 제3자에게 제공되지 않습니다.
        </small>
        <hr>
    </div>
    <div class="card card-body bg-light mt-5 mx-3">
        <h3 class="mb-5">일반회원</h3>

        <form id="joinfrm" name="joinfrm">
            <div class="row">
                <div class="row col-11 offset-1 mb-3 align-items-center">
                    <label for="name" class="col-2 form-label text-danger text-end">이름</label>
                    <div class="col-3">
                        <input type="text" name="name" id="name" readonly
                               class="form-control border-danger bg-light" value="${mb.name}">
                    </div>
                </div>
                <div class="row col-11 offset-1 mb-3 align-items-center">
                    <label for="jumin1a" class="col-2 form-label text-danger text-end">주민번호</label>
                    <div class="col-3">
                        <input type="text" name="jumin1" id="jumin1a" readonly
                               class="form-control border-danger bg-light" value="${mb.jumin1}">
                    </div>
                    <div class="col-3">
                        <input type="text" name="jumin2" id="jumin2a" readonly
                               class="form-control border-danger bg-light" value="${mb.jumin2}">
                    </div>
                </div>
                <div class="row col-11 offset-1 mb-3 align-items-center">
                    <label for="uid" class="col-2 form-label text-danger text-end">아이디</label>
                    <div class="col-3">
                        <input type="text" name="uid" id="uid"
                               class="form-control border-danger">
                    </div>
                    <div class="col-auto">
                            <span id="uidmsg" class="form-text">
                                6~16 자의 영문 소문자, 숫자와 특수기호(_)만 사용할 수 있습니다.
                            </span>
                    </div>
                </div>
                <div class="row col-11 offset-1 mb-3 align-items-center">
                    <label for="pwd" class="col-2 form-label text-danger text-end">비밀번호</label>
                    <div class="col-3">
                        <input type="password" name="pwd" id="pwd"
                               class="form-control border-danger">
                    </div>
                    <div class="col-auto">
                            <span id="pwdmsg" class="form-text">
                                6~16 자의 영문 소문자, 숫자와 특수기호(_)만 사용할 수 있습니다.
                            </span>
                    </div>
                </div>
                <div class="row col-11 offset-1 mb-3 align-items-center">
                    <label for="repwd" class="col-2 form-label text-danger text-end">비밀번호 확인</label>
                    <div class="col-3">
                        <input type="password" name="repwd" id="repwd"
                               class="form-control border-danger">
                    </div>
                    <div class="col-auto">
                            <span id="repwdmsg" class="form-text">
                                이전 항목에서 입력했던 비밀번호를 한 번 더 입력하세요
                            </span>
                    </div>
                </div>

                <div class="row col-11 offset-1 mb-3 align-items-center">
                    <label for="repwd" class="col-2 form-label text-danger text-end">우편번호</label>
                    <div class="col-1">
                        <input type="text" name="zip1" id="zip1"
                               class="form-control border-danger bg-light" readonly>
                    </div>
                    <div class="col-1">
                        <input type="text" name="zip2" id="zip2"
                               class="form-control border-danger bg-light" readonly>
                    </div>
                    <div class="col-3">
                        <button type="button" class="btn btn-dark" id="zpmdbtn">
                            <i class="fas fa-question-circle"></i> 우편번호 찾기 </button>
                    </div>
                </div>

                <div class="row col-11 offset-1 mb-3 align-items-center">
                    <label for="addr1" class="col-2 form-label text-danger text-end">나머지 주소</label>
                    <div class="col-4">
                        <input type="text" name="addr1" id="addr1" class="form-control border-danger bg-light" readonly>
                    </div>
                    <div class="col-4">
                        <input type="text" name="addr2" id="addr2" class="form-control border-danger">
                    </div>
                </div>

                <div class="row col-11 offset-1 mb-3 align-items-center">
                    <label for="email1" class="col-2 form-label text-danger text-end">전자우편 주소</label>
                    <div class="col-5">
                        <div class="input-group">
                            <input type="text" name="email1" id="email1" class="form-control border-danger">
                            <span class="input-group-text border-danger">@</span>
                            <input type="text" name="email2" id="email2" class="form-control border-danger bg-light" readonly>
                        </div>
                    </div>

                    <div class="col-3">
                        <select class="form-select border-danger" id="email3">
                            <option>-선택하세요-</option>
                            <option>직접입력하기</option>
                            <option>naver.com</option>
                            <option>gmail.com</option>
                            <option>hotmail.com</option>
                        </select>
                    </div>
                </div>

                <div class="row col-11 offset-1 mb-3 align-items-center">
                    <label for="tel1" class="col-2 form-label text-danger text-end">전화번호</label>
                    <div class="col-2">
                        <select class="form-select border-danger" name="tel1" id="tel1">
                            <option>국번</option>
                            <option>010</option>
                            <option>011</option>
                        </select>
                    </div>
                    <div class="col-2">
                        <input type="text" name="tel2" id="tel2" class="form-control border-danger">
                    </div>
                    <div class="col-2">
                        <input type="text" name="tel3" id="tel3" class="form-control border-danger">
                    </div>
                </div>

                <div class="row col-11 offset-1 mb-5 align-items-center">
                    <label for="grecaptcha" class="col-2 form-label text-danger text-end">자동가입방지</label>
                    <div class="col-3">
                        <div class="g-recaptcha" data-sitekey="6LdU4OskAAAAAGphv-UlASNVhJs3LGCNl6cfbJJr"></div>
                        <input type="hidden" name="grecaptcha" id="grecaptcha">
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col text-center">
                    <hr class="w-75 mx-auto">   <%-- margin x축 auto --%>
                    <button type="button" id="joinbtn" class="btn btn-primary">
                        <i class="fas fa-check-circle"> 입력완료</i></button>
                    <button type="button" id="cancelbtn" class="btn btn-danger">
                        <i class="fas fa-times-circle"> 입력취소</i></button>
                </div>
            </div>

            <input type="hidden" name="jumin" id="jumin">
            <input type="hidden" name="zipcode" id="zipcode">
            <input type="hidden" name="email" id="email">
            <input type="hidden" name="phone" id="phone">
        </form>
    </div>

    <%-- 우편번호 폼 모달 --%>
    <div class="modal fade" id="zipmodal" role="dialog" data-bs-backdrop="static" data-bs-keyboard="false">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="mt-2">우편번호 찾기</h3>
                    <button type="button" data-bs-dismiss="modal" class="btn btn-light">
                        <i class="fa-duotone fa-x"></i>
                    </button>
                </div>
                <div class="modal-body">
                    <form name="zipfrm" id="zipfrm">
                        <div class="row justify-content-center align-items-center">
                            <label class="col-3 form-label text-end ms-5" for="dong" style="margin-bottom: 10px !important;">
                                검색하실 주소의 <br />
                                동 이름을 입력하세요</label>
                            <div class="col-4">
                                <input type="text" id="dong" name="dong" class="form-control border-primary" />
                            </div>
                            <div class="col-3">
                                <button type="button" class="btn btn-primary" id="findzipbtn">
                                    <i class="fas fa-search"></i> 검색하기
                                </button>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <p class="col-12 text-danger text-center">
                                지역의 읍/면/동의 이름을 공백없이 입력하신 후, [검색하기] 버튼을 클릭하세요
                            </p>
                        </div>
                        <div class="row col-8 offset-2">
                            <select class="form-select" id="addrlist" name="addrlist" size="10">
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                                <option>123-456 서울 구로구 구로동</option>
                            </select>
                        </div>
                    </form>
                </div>
                <div class="modal-footer justify-content-end">
                    <button type="button" data-bs-dismiss="modal" class="btn btn-danger" id="sendzip">
                        <i class="fas fa-check-square"></i> 선택하고 닫기
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>